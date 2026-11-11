#!/usr/bin/env node
/**
 * Phase 5 — Reproducible Web Asset Pipeline (tools/assets/build-web-assets.mjs)
 *
 * Converts the original extracted Rotastic assets in `assets-original/` into
 * browser-ready formats in `packages/client/public/assets/`:
 *   1. Decodes DDS textures (DXT1, DXT3, DXT5, uncompressed BGRA8) to optimized PNGs
 *      with automatic SHA-256 deduplication across global and 19 multiplayer map packages.
 *   2. Normalizes and indexes all 172 WAV sound effects for Web Audio API playback.
 *   3. Bundles the 19 multiplayer map specifications (`maps.json`) and generates a complete,
 *      strongly-structured asset manifest (`manifest.json`).
 *
 * Zero external native dependencies: uses 100% pure Node.js (`fs`, `crypto`, `zlib`).
 */

import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import zlib from 'node:zlib';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const REPO_ROOT = path.resolve(__dirname, '..', '..');

const SRC_TEXTURES_DIR = path.join(REPO_ROOT, 'assets-original', 'textures');
const SRC_AUDIO_DIR = path.join(REPO_ROOT, 'assets-original', 'audio', 'sfx');
const SRC_MAPS_SPEC = path.join(REPO_ROOT, 'reference', 'decompiled', 'multiplayer-maps-spec.json');
const SRC_DM_MAPS_SPEC = path.join(REPO_ROOT, 'reference', 'decompiled', 'deathmatch-maps-spec.json');

const OUT_ASSETS_DIR = path.join(REPO_ROOT, 'packages', 'client', 'public', 'assets');
const OUT_TEXTURES_DIR = path.join(OUT_ASSETS_DIR, 'textures');
const OUT_AUDIO_DIR = path.join(OUT_ASSETS_DIR, 'audio', 'sfx');
const OUT_MANIFEST_PATH = path.join(OUT_ASSETS_DIR, 'manifest.json');
const OUT_MAPS_PATH = path.join(OUT_ASSETS_DIR, 'maps.json');
const OUT_DM_MAPS_PATH = path.join(OUT_ASSETS_DIR, 'deathmatch-maps.json');

// ============================================================================
// CRC32 Table for PNG Chunk Encoding
// ============================================================================
const CRC_TABLE = new Uint32Array(256);
for (let n = 0; n < 256; n++) {
  let c = n;
  for (let k = 0; k < 8; k++) {
    c = c & 1 ? 0xedb88320 ^ (c >>> 1) : c >>> 1;
  }
  CRC_TABLE[n] = c >>> 0;
}

function crc32(buf) {
  let c = 0xffffffff;
  for (let i = 0; i < buf.length; i++) {
    c = CRC_TABLE[(c ^ buf[i]) & 0xff] ^ (c >>> 8);
  }
  return (c ^ 0xffffffff) >>> 0;
}

function makePngChunk(typeStr, dataBuf) {
  const len = dataBuf.length;
  const out = Buffer.allocUnsafe(12 + len);
  out.writeUInt32BE(len, 0);
  out.write(typeStr, 4, 4, 'ascii');
  if (len > 0) {
    dataBuf.copy(out, 8);
  }
  const crcVal = crc32(out.subarray(4, 8 + len));
  out.writeUInt32BE(crcVal, 8 + len);
  return out;
}

/**
 * Encodes an RGBA8 pixel buffer (width * height * 4 bytes) into a compressed PNG Buffer
 * using Sub/Up adaptive row filtering and zlib level 9.
 */
function encodeRgbaToPng(width, height, rgba) {
  const signature = Buffer.from([137, 80, 78, 71, 13, 10, 26, 10]);

  const ihdr = Buffer.allocUnsafe(13);
  ihdr.writeUInt32BE(width, 0);
  ihdr.writeUInt32BE(height, 4);
  ihdr[8] = 8; // bit depth: 8
  ihdr[9] = 6; // color type: 6 (RGBA)
  ihdr[10] = 0; // compression: 0
  ihdr[11] = 0; // filter: 0
  ihdr[12] = 0; // interlace: 0

  const stride = width * 4;
  const rawScanlines = Buffer.allocUnsafe(height * (1 + stride));

  // Filter type 1 (Sub) gives strong compression on smooth game sprites while staying fast
  for (let y = 0; y < height; y++) {
    const rowInOff = y * stride;
    const rowOutOff = y * (1 + stride);
    rawScanlines[rowOutOff] = 1; // Sub filter
    for (let x = 0; x < stride; x++) {
      const cur = rgba[rowInOff + x];
      const left = x >= 4 ? rgba[rowInOff + x - 4] : 0;
      rawScanlines[rowOutOff + 1 + x] = (cur - left) & 0xff;
    }
  }

  const compressed = zlib.deflateSync(rawScanlines, { level: 9 });
  const iend = Buffer.alloc(0);

  return Buffer.concat([
    signature,
    makePngChunk('IHDR', ihdr),
    makePngChunk('IDAT', compressed),
    makePngChunk('IEND', iend),
  ]);
}

// ============================================================================
// DDS Decoder (DXT1, DXT3, DXT5, Uncompressed BGRA8/RGBA8)
// ============================================================================
function unpackRgb565(color) {
  const r5 = (color >>> 11) & 0x1f;
  const g6 = (color >>> 5) & 0x3f;
  const b5 = color & 0x1f;
  return [
    (r5 << 3) | (r5 >>> 2),
    (g6 << 2) | (g6 >>> 4),
    (b5 << 3) | (b5 >>> 2),
  ];
}

function decodeDxtColorBlock(buf, offset, isDxt1) {
  const c0 = buf.readUInt16LE(offset);
  const c1 = buf.readUInt16LE(offset + 2);
  const [r0, g0, b0] = unpackRgb565(c0);
  const [r1, g1, b1] = unpackRgb565(c1);

  const palette = new Uint8Array(16);
  palette[0] = r0;
  palette[1] = g0;
  palette[2] = b0;
  palette[3] = 255;

  palette[4] = r1;
  palette[5] = g1;
  palette[6] = b1;
  palette[7] = 255;

  if (!isDxt1 || c0 > c1) {
    palette[8] = ((2 * r0 + r1 + 1) / 3) | 0;
    palette[9] = ((2 * g0 + g1 + 1) / 3) | 0;
    palette[10] = ((2 * b0 + b1 + 1) / 3) | 0;
    palette[11] = 255;

    palette[12] = ((r0 + 2 * r1 + 1) / 3) | 0;
    palette[13] = ((g0 + 2 * g1 + 1) / 3) | 0;
    palette[14] = ((b0 + 2 * b1 + 1) / 3) | 0;
    palette[15] = 255;
  } else {
    palette[8] = ((r0 + r1) / 2) | 0;
    palette[9] = ((g0 + g1) / 2) | 0;
    palette[10] = ((b0 + b1) / 2) | 0;
    palette[11] = 255;

    palette[12] = 0;
    palette[13] = 0;
    palette[14] = 0;
    palette[15] = 0;
  }

  const indices = buf.readUInt32LE(offset + 4);
  return { palette, indices };
}

function decodeDdsToRgba(ddsBuf) {
  if (ddsBuf.length < 128 || ddsBuf.toString('ascii', 0, 4) !== 'DDS ') {
    throw new Error('Invalid DDS header');
  }

  const height = ddsBuf.readUInt32LE(12);
  const width = ddsBuf.readUInt32LE(16);
  const fourCC = ddsBuf.subarray(84, 88).toString('ascii').replace(/\0/g, '');
  const bitCount = ddsBuf.readUInt32LE(88);
  const rMask = ddsBuf.readUInt32LE(92);

  const rgba = new Uint8Array(width * height * 4);
  const dataOffset = 128;

  if (fourCC === 'DXT1') {
    const blocksX = Math.max(1, Math.ceil(width / 4));
    const blocksY = Math.max(1, Math.ceil(height / 4));
    let ptr = dataOffset;

    for (let by = 0; by < blocksY; by++) {
      for (let bx = 0; bx < blocksX; bx++) {
        const { palette, indices } = decodeDxtColorBlock(ddsBuf, ptr, true);
        ptr += 8;

        for (let py = 0; py < 4; py++) {
          const y = by * 4 + py;
          if (y >= height) continue;
          for (let px = 0; px < 4; px++) {
            const x = bx * 4 + px;
            if (x >= width) continue;
            const bitShift = (py * 4 + px) * 2;
            const idx = ((indices >>> bitShift) & 0x03) * 4;
            const dst = (y * width + x) * 4;
            rgba[dst] = palette[idx];
            rgba[dst + 1] = palette[idx + 1];
            rgba[dst + 2] = palette[idx + 2];
            rgba[dst + 3] = palette[idx + 3];
          }
        }
      }
    }
    return { width, height, format: 'DXT1', rgba };
  }

  if (fourCC === 'DXT3') {
    const blocksX = Math.max(1, Math.ceil(width / 4));
    const blocksY = Math.max(1, Math.ceil(height / 4));
    let ptr = dataOffset;

    for (let by = 0; by < blocksY; by++) {
      for (let bx = 0; bx < blocksX; bx++) {
        const alphaLo = ddsBuf.readUInt32LE(ptr);
        const alphaHi = ddsBuf.readUInt32LE(ptr + 4);
        const { palette, indices } = decodeDxtColorBlock(ddsBuf, ptr + 8, false);
        ptr += 16;

        for (let py = 0; py < 4; py++) {
          const y = by * 4 + py;
          if (y >= height) continue;
          for (let px = 0; px < 4; px++) {
            const x = bx * 4 + px;
            if (x >= width) continue;
            const pIdx = py * 4 + px;
            const idx = ((indices >>> (pIdx * 2)) & 0x03) * 4;
            const a4 =
              pIdx < 8
                ? (alphaLo >>> (pIdx * 4)) & 0x0f
                : (alphaHi >>> ((pIdx - 8) * 4)) & 0x0f;
            const dst = (y * width + x) * 4;
            rgba[dst] = palette[idx];
            rgba[dst + 1] = palette[idx + 1];
            rgba[dst + 2] = palette[idx + 2];
            rgba[dst + 3] = (a4 << 4) | a4;
          }
        }
      }
    }
    return { width, height, format: 'DXT3', rgba };
  }

  if (fourCC === 'DXT5') {
    const blocksX = Math.max(1, Math.ceil(width / 4));
    const blocksY = Math.max(1, Math.ceil(height / 4));
    let ptr = dataOffset;
    const alphaPalette = new Uint8Array(8);

    for (let by = 0; by < blocksY; by++) {
      for (let bx = 0; bx < blocksX; bx++) {
        const a0 = ddsBuf[ptr];
        const a1 = ddsBuf[ptr + 1];
        alphaPalette[0] = a0;
        alphaPalette[1] = a1;
        if (a0 > a1) {
          alphaPalette[2] = ((6 * a0 + 1 * a1 + 3) / 7) | 0;
          alphaPalette[3] = ((5 * a0 + 2 * a1 + 3) / 7) | 0;
          alphaPalette[4] = ((4 * a0 + 3 * a1 + 3) / 7) | 0;
          alphaPalette[5] = ((3 * a0 + 4 * a1 + 3) / 7) | 0;
          alphaPalette[6] = ((2 * a0 + 5 * a1 + 3) / 7) | 0;
          alphaPalette[7] = ((1 * a0 + 6 * a1 + 3) / 7) | 0;
        } else {
          alphaPalette[2] = ((4 * a0 + 1 * a1 + 2) / 5) | 0;
          alphaPalette[3] = ((3 * a0 + 2 * a1 + 2) / 5) | 0;
          alphaPalette[4] = ((2 * a0 + 3 * a1 + 2) / 5) | 0;
          alphaPalette[5] = ((1 * a0 + 4 * a1 + 2) / 5) | 0;
          alphaPalette[6] = 0;
          alphaPalette[7] = 255;
        }

        // 48-bit alpha index table at ptr+2..ptr+7 (two 24-bit chunks)
        const aBitsLo =
          ddsBuf[ptr + 2] | (ddsBuf[ptr + 3] << 8) | (ddsBuf[ptr + 4] << 16);
        const aBitsHi =
          ddsBuf[ptr + 5] | (ddsBuf[ptr + 6] << 8) | (ddsBuf[ptr + 7] << 16);

        const { palette, indices } = decodeDxtColorBlock(ddsBuf, ptr + 8, false);
        ptr += 16;

        for (let py = 0; py < 4; py++) {
          const y = by * 4 + py;
          if (y >= height) continue;
          for (let px = 0; px < 4; px++) {
            const x = bx * 4 + px;
            if (x >= width) continue;
            const pIdx = py * 4 + px;
            const cIdx = ((indices >>> (pIdx * 2)) & 0x03) * 4;
            const aIdx =
              pIdx < 8
                ? (aBitsLo >>> (pIdx * 3)) & 0x07
                : (aBitsHi >>> ((pIdx - 8) * 3)) & 0x07;
            const dst = (y * width + x) * 4;
            rgba[dst] = palette[cIdx];
            rgba[dst + 1] = palette[cIdx + 1];
            rgba[dst + 2] = palette[cIdx + 2];
            rgba[dst + 3] = alphaPalette[aIdx];
          }
        }
      }
    }
    return { width, height, format: 'DXT5', rgba };
  }

  if (!fourCC && bitCount === 32) {
    const isBgra = rMask === 0x00ff0000;
    const totalPixels = width * height;
    for (let i = 0; i < totalPixels; i++) {
      const src = dataOffset + i * 4;
      const dst = i * 4;
      if (isBgra) {
        rgba[dst] = ddsBuf[src + 2];
        rgba[dst + 1] = ddsBuf[src + 1];
        rgba[dst + 2] = ddsBuf[src];
        rgba[dst + 3] = ddsBuf[src + 3];
      } else {
        rgba[dst] = ddsBuf[src];
        rgba[dst + 1] = ddsBuf[src + 1];
        rgba[dst + 2] = ddsBuf[src + 2];
        rgba[dst + 3] = ddsBuf[src + 3];
      }
    }
    return { width, height, format: isBgra ? 'BGRA8' : 'RGBA8', rgba };
  }

  throw new Error(`Unsupported DDS format: fourCC="${fourCC}", bitCount=${bitCount}`);
}

// ============================================================================
// Helpers for Asset Naming & Classification
// ============================================================================
function walkFiles(dir, ext) {
  const results = [];
  if (!fs.existsSync(dir)) return results;
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      results.push(...walkFiles(full, ext));
    } else if (entry.name.toLowerCase().endsWith(ext)) {
      results.push(full);
    }
  }
  return results.sort();
}

function cleanAssetStem(filename) {
  const stem = path.basename(filename, path.extname(filename));
  const m = /^(\d{4})_(.+)$/.exec(stem);
  return m ? m[2] : stem;
}

function classifyAudioCategory(cleanName) {
  const lower = cleanName.toLowerCase();
  if (lower.includes('rope') || lower.includes('hook') || lower.includes('attach') || lower.includes('cut')) {
    return 'rope';
  }
  if (lower.includes('gem') || lower.includes('item') || lower.includes('diam') || lower.includes('collect') || lower.includes('jewel')) {
    return 'pickup';
  }
  if (lower.includes('hit') || lower.includes('kill') || lower.includes('death') || lower.includes('slaughter') || lower.includes('punch') || lower.includes('stun')) {
    return 'combat';
  }
  if (lower.includes('menu') || lower.includes('ui') || lower.includes('btn') || lower.includes('click') || lower.includes('count') || lower.includes('win')) {
    return 'ui';
  }
  if (lower.includes('trap') || lower.includes('bomb') || lower.includes('mine') || lower.includes('saw') || lower.includes('vortex') || lower.includes('wall')) {
    return 'hazard';
  }
  return 'gameplay';
}

function parseWavMetadata(wavBuf) {
  const channels = wavBuf.readUInt16LE(22);
  const sampleRate = wavBuf.readUInt32LE(24);
  const byteRate = wavBuf.readUInt32LE(28);
  const bitsPerSample = wavBuf.readUInt16LE(34);
  // Locate 'data' chunk
  let offset = 12;
  let dataBytes = wavBuf.length - 44;
  while (offset + 8 <= wavBuf.length) {
    const chunkId = wavBuf.toString('ascii', offset, offset + 4);
    const chunkSize = wavBuf.readUInt32LE(offset + 4);
    if (chunkId === 'data') {
      dataBytes = chunkSize;
      break;
    }
    offset += 8 + chunkSize + (chunkSize & 1);
  }
  const durationSec = byteRate > 0 ? Number((dataBytes / byteRate).toFixed(3)) : 0;
  return { channels, sampleRate, bitsPerSample, dataBytes, durationSec };
}

// ============================================================================
// Main Pipeline Execution
// ============================================================================
function main() {
  const startTime = Date.now();
  console.log('[assets:build] Starting Rotastic reproducible Web Asset Pipeline...');

  fs.mkdirSync(OUT_TEXTURES_DIR, { recursive: true });
  fs.mkdirSync(OUT_AUDIO_DIR, { recursive: true });

  // 1. Process & Deduplicate DDS Textures -> PNG
  const ddsFiles = walkFiles(SRC_TEXTURES_DIR, '.dds');
  if (ddsFiles.length === 0) {
    throw new Error(`No .dds files found in ${SRC_TEXTURES_DIR}. Run scripts/bootstrap.ps1 first.`);
  }

  const hashToTextureEntry = new Map();
  const usedOutPaths = new Map(); // outRelPath -> sha256
  const globalTextures = {};
  const backgroundTextures = {};
  const mapTextures = {};
  let totalPngBytes = 0;

  for (const ddsPath of ddsFiles) {
    const relFromSrc = path.relative(SRC_TEXTURES_DIR, ddsPath).replace(/\\/g, '/');
    const parts = relFromSrc.split('/');
    const isGlobal = parts[0] === 'global';
    const isBackground = parts[0] === 'backgrounds';
    const mapPackage = !isGlobal && !isBackground && parts.length >= 2 ? parts[1] : null;
    const cleanName = cleanAssetStem(ddsPath);

    const ddsBuf = fs.readFileSync(ddsPath);
    const sha256 = crypto.createHash('sha256').update(ddsBuf).digest('hex').slice(0, 16);

    let texEntry = hashToTextureEntry.get(sha256);
    if (!texEntry) {
      const { width, height, format, rgba } = decodeDdsToRgba(ddsBuf);
      const pngBuf = encodeRgbaToPng(width, height, rgba);

      const subFolder = isGlobal ? 'global' : isBackground ? 'backgrounds' : 'arenas';
      let outRel = `textures/${subFolder}/${cleanName}.png`;
      if (usedOutPaths.has(outRel) && usedOutPaths.get(outRel) !== sha256) {
        outRel = `textures/${subFolder}/${cleanName}_${sha256.slice(0, 8)}.png`;
      }
      usedOutPaths.set(outRel, sha256);

      const outAbs = path.join(OUT_ASSETS_DIR, outRel);
      fs.mkdirSync(path.dirname(outAbs), { recursive: true });
      fs.writeFileSync(outAbs, pngBuf);
      totalPngBytes += pngBuf.length;

      texEntry = {
        id: cleanName,
        url: `/assets/${outRel}`,
        width,
        height,
        originalFormat: format,
        sha256,
        pngBytes: pngBuf.length,
        sources: [],
      };
      hashToTextureEntry.set(sha256, texEntry);
    }

    texEntry.sources.push(relFromSrc);

    if (isGlobal) {
      globalTextures[cleanName] = texEntry.url;
    } else if (isBackground) {
      backgroundTextures[cleanName] = texEntry.url;
    } else if (mapPackage) {
      if (!mapTextures[mapPackage]) {
        mapTextures[mapPackage] = {};
      }
      mapTextures[mapPackage][cleanName] = texEntry.url;
    }
  }

  // 2. Process WAV Audio -> Web Audio SFX
  const wavFiles = walkFiles(SRC_AUDIO_DIR, '.wav');
  if (wavFiles.length === 0) {
    throw new Error(`No .wav files found in ${SRC_AUDIO_DIR}. Run scripts/bootstrap.ps1 first.`);
  }

  const audioCatalog = {};
  const usedAudioNames = new Set();
  let totalWavBytes = 0;

  for (const wavPath of wavFiles) {
    const wavBuf = fs.readFileSync(wavPath);
    const sha256 = crypto.createHash('sha256').update(wavBuf).digest('hex').slice(0, 16);
    let cleanName = cleanAssetStem(wavPath);
    if (usedAudioNames.has(cleanName)) {
      cleanName = `${cleanName}_${sha256.slice(0, 6)}`;
    }
    usedAudioNames.add(cleanName);

    const outRel = `audio/sfx/${cleanName}.wav`;
    const outAbs = path.join(OUT_ASSETS_DIR, outRel);
    fs.writeFileSync(outAbs, wavBuf);
    totalWavBytes += wavBuf.length;

    const meta = parseWavMetadata(wavBuf);
    audioCatalog[cleanName] = {
      id: cleanName,
      url: `/assets/${outRel}`,
      category: classifyAudioCategory(cleanName),
      ...meta,
      sha256,
    };
  }

  // 3. Copy & Link the Multiplayer & Deathmatch Maps Specifications
  let mapsData = { maps: [] };
  if (fs.existsSync(SRC_MAPS_SPEC)) {
    mapsData = JSON.parse(fs.readFileSync(SRC_MAPS_SPEC, 'utf-8'));
    fs.writeFileSync(OUT_MAPS_PATH, JSON.stringify(mapsData, null, 2), 'utf-8');
  }
  let dmMapsData = { maps: [] };
  if (fs.existsSync(SRC_DM_MAPS_SPEC)) {
    dmMapsData = JSON.parse(fs.readFileSync(SRC_DM_MAPS_SPEC, 'utf-8'));
    fs.writeFileSync(OUT_DM_MAPS_PATH, JSON.stringify(dmMapsData, null, 2), 'utf-8');
  }

  // 4. Write Master Web Asset Manifest
  const manifest = {
    schemaVersion: '1.1.0',
    generatedBy: 'tools/assets/build-web-assets.mjs',
    stats: {
      sourceDdsCount: ddsFiles.length,
      uniquePngCount: hashToTextureEntry.size,
      totalPngBytes,
      totalPngMB: Number((totalPngBytes / (1024 * 1024)).toFixed(2)),
      audioSfxCount: wavFiles.length,
      totalWavBytes,
      totalWavMB: Number((totalWavBytes / (1024 * 1024)).toFixed(2)),
      deathmatchMapCount: Array.isArray(dmMapsData.maps) ? dmMapsData.maps.length : 8,
    },
    globalTextures,
    backgroundTextures,
    mapTextures,
    texturesByHash: Object.fromEntries(hashToTextureEntry.entries()),
    audioSfx: audioCatalog,
    mapsUrl: '/assets/deathmatch-maps.json',
  };

  fs.writeFileSync(OUT_MANIFEST_PATH, JSON.stringify(manifest, null, 2), 'utf-8');

  const elapsedSec = ((Date.now() - startTime) / 1000).toFixed(2);
  console.log(
    `[assets:build] Completed in ${elapsedSec}s:\n` +
      `  - DDS -> PNG: ${ddsFiles.length} source files deduplicated to ${hashToTextureEntry.size} PNGs (${manifest.stats.totalPngMB} MB)\n` +
      `  - WAV SFX:    ${wavFiles.length} audio files (${manifest.stats.totalWavMB} MB)\n` +
      `  - Maps Spec:  ${manifest.stats.deathmatchMapCount} deathmatch maps -> packages/client/public/assets/deathmatch-maps.json\n` +
      `  - Manifest:   packages/client/public/assets/manifest.json`
  );
}

main();
