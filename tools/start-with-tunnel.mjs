#!/usr/bin/env node
import { spawn } from 'node:child_process';
import fs from 'node:fs';
import net from 'node:net';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { Tunnel } from 'cloudflared';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const rootDir = path.resolve(__dirname, '..');

const serverPort = Number(process.env.PORT) || 3001;
const targetUrl = `http://localhost:${serverPort}`;

function checkPortOpen(port, host = '127.0.0.1', timeout = 1000) {
  return new Promise((resolve) => {
    const socket = new net.Socket();
    socket.setTimeout(timeout);
    socket.once('connect', () => {
      socket.destroy();
      resolve(true);
    });
    socket.once('timeout', () => {
      socket.destroy();
      resolve(false);
    });
    socket.once('error', () => {
      socket.destroy();
      resolve(false);
    });
    socket.connect(port, host);
  });
}

async function waitForPort(port, maxAttempts = 30, intervalMs = 400) {
  for (let i = 0; i < maxAttempts; i++) {
    if (await checkPortOpen(port)) return true;
    await new Promise((r) => setTimeout(r, intervalMs));
  }
  return false;
}

function ensureBuildExists() {
  const clientIndex = path.join(rootDir, 'packages', 'client', 'dist', 'index.html');
  const serverIndex = path.join(rootDir, 'packages', 'server', 'dist', 'index.js');
  if (!fs.existsSync(clientIndex) || !fs.existsSync(serverIndex)) {
    console.log('[start:tunnel] Build não encontrado. Executando pnpm build inicial...');
    const isWindows = process.platform === 'win32';
    const { execSync } = await import('node:child_process');
    execSync(isWindows ? 'pnpm.cmd build' : 'pnpm build', {
      cwd: rootDir,
      stdio: 'inherit',
    });
  }
}

async function main() {
  console.log('[start:tunnel] Preparando para iniciar o jogo (pnpm start) com Cloudflare Tunnel...');

  const clientIndex = path.join(rootDir, 'packages', 'client', 'dist', 'index.html');
  const serverIndex = path.join(rootDir, 'packages', 'server', 'dist', 'index.js');
  if (!fs.existsSync(clientIndex) || !fs.existsSync(serverIndex)) {
    console.log('[start:tunnel] Dist não encontrado. Executando pnpm build...');
    const isWindows = process.platform === 'win32';
    const child = spawn(isWindows ? 'pnpm.cmd' : 'pnpm', ['build'], {
      cwd: rootDir,
      stdio: 'inherit',
      shell: false,
    });
    await new Promise((resolve, reject) => {
      child.on('close', (code) => (code === 0 ? resolve() : reject(new Error(`Build falhou: ${code}`))));
      child.on('error', reject);
    });
  }

  console.log(`[start:tunnel] Iniciando servidor autoritativo na porta ${serverPort}...`);
  const isWindows = process.platform === 'win32';
  const serverProcess = spawn(
    isWindows ? 'pnpm.cmd' : 'pnpm',
    ['start'],
    {
      cwd: rootDir,
      stdio: 'inherit',
      shell: false,
    }
  );

  serverProcess.on('error', (err) => {
    console.error('[start:tunnel] Erro ao iniciar servidor:', err);
  });

  const ready = await waitForPort(serverPort);
  if (ready) {
    console.log(`[start:tunnel] Servidor online em ${targetUrl}! Abrindo túnel Cloudflare...`);
  } else {
    console.warn(`[start:tunnel] Servidor ainda conectando... Abrindo túnel Cloudflare.`);
  }

  const tunnel = Tunnel.quick(targetUrl);
  let urlLogged = false;

  tunnel.on('url', (publicUrl) => {
    if (urlLogged) return;
    urlLogged = true;

    console.log('');
    console.log('='.repeat(74));
    console.log(' 🚀 CLOUDFLARE QUICK TUNNEL ATIVO (try.cloudflare.com)');
    console.log('='.repeat(74));
    console.log(' Compartilhe o link abaixo com seus amigos para jogarem juntos:');
    console.log('');
    console.log(` 👉 \x1b[32m\x1b[1m${publicUrl}\x1b[0m 👈`);
    console.log('');
    console.log(` 📡 Servidor local: ${targetUrl} (pnpm start)`);
    console.log(` 🎮 Qualquer pessoa com o link acima pode entrar e jogar.`);
    console.log(' Pressione Ctrl+C para encerrar o túnel e o servidor.');
    console.log('='.repeat(74));
    console.log('');
  });

  tunnel.on('error', (err) => {
    console.error('[start:tunnel] Erro no Cloudflare Tunnel:', err);
  });

  const cleanup = () => {
    console.log('\n[start:tunnel] Encerrando túnel e servidor...');
    tunnel.stop();
    if (serverProcess && !serverProcess.killed) {
      serverProcess.kill('SIGINT');
    }
  };

  process.on('SIGINT', cleanup);
  process.on('SIGTERM', cleanup);

  serverProcess.on('close', (code) => {
    console.log(`[start:tunnel] Servidor encerrado com código ${code}.`);
    tunnel.stop();
    process.exit(code ?? 0);
  });
}

main().catch((err) => {
  console.error('[start:tunnel] Falha:', err);
  process.exit(1);
});
