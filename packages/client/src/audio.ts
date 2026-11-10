/**
 * Web Audio API Sound Manager for Rotastic Original SFX (`/assets/audio/sfx/*.wav`)
 */

const SFX_MAP = {
  select: '/assets/audio/sfx/sfx_gui_select001.wav',
  confirm: '/assets/audio/sfx/sfx_gui_valid001.wav',
  gong: '/assets/audio/sfx/sfx_gui_gong.wav',
  podium: '/assets/audio/sfx/sfx_gui_podium.wav',
  diamond: '/assets/audio/sfx/sfx_pickup_diamond.wav',
  gem: '/assets/audio/sfx/sfx_gui_partial_score.wav',
  bounce: '/assets/audio/sfx/sfx_ing_breakablemetallight-01.wav',
  wallbreak: '/assets/audio/sfx/sfx_ing_breakablewoodbox-01.wav',
  attach: '/assets/audio/sfx/sfx_gui_misc.wav',
  release: '/assets/audio/sfx/sfx_gui_misc2.wav',
  ropecut: '/assets/audio/sfx/sfx_ing_breakablemetalheavy-01.wav',
  slaughter: '/assets/audio/sfx/sfx_ing_canon-01.wav',
  death: '/assets/audio/sfx/sfx_ing_canonslime-01.wav',
  respawn: '/assets/audio/sfx/sfx_ing_warpzone-01.wav',
} as const;

export type SfxKey = keyof typeof SFX_MAP;

export class RotasticAudioManager {
  private ctx: AudioContext | null = null;
  private buffers = new Map<SfxKey, AudioBuffer>();
  private loading = new Set<SfxKey>();
  public muted = false;

  private ensureContext(): AudioContext | null {
    if (this.muted || typeof window === 'undefined') return null;
    if (!this.ctx) {
      const AudioCtx =
        window.AudioContext || (window as unknown as { webkitAudioContext: typeof AudioContext }).webkitAudioContext;
      if (AudioCtx) {
        this.ctx = new AudioCtx();
      }
    }
    if (this.ctx && this.ctx.state === 'suspended') {
      this.ctx.resume().catch(() => {});
    }
    return this.ctx;
  }

  public preloadAll(): void {
    (Object.keys(SFX_MAP) as SfxKey[]).forEach((key) => {
      this.loadSfx(key).catch(() => {});
    });
  }

  private async loadSfx(key: SfxKey): Promise<AudioBuffer | null> {
    if (this.buffers.has(key)) return this.buffers.get(key)!;
    if (this.loading.has(key)) return null;
    const ctx = this.ensureContext();
    if (!ctx) return null;

    this.loading.add(key);
    try {
      const res = await fetch(SFX_MAP[key]);
      if (!res.ok) return null;
      const arr = await res.arrayBuffer();
      const audioBuf = await ctx.decodeAudioData(arr);
      this.buffers.set(key, audioBuf);
      return audioBuf;
    } catch {
      return null;
    } finally {
      this.loading.delete(key);
    }
  }

  public play(key: SfxKey, volume = 0.45, pitchJitter = 0.06): void {
    if (this.muted) return;
    const ctx = this.ensureContext();
    if (!ctx) return;

    const cached = this.buffers.get(key);
    if (!cached) {
      this.loadSfx(key).then((buf) => {
        if (buf) this.playBuffer(ctx, buf, volume, pitchJitter);
      });
      return;
    }
    this.playBuffer(ctx, cached, volume, pitchJitter);
  }

  private playBuffer(
    ctx: AudioContext,
    buf: AudioBuffer,
    volume: number,
    pitchJitter: number
  ): void {
    try {
      const source = ctx.createBufferSource();
      source.buffer = buf;
      source.playbackRate.value = 1 + (Math.random() * 2 - 1) * pitchJitter;

      const gain = ctx.createGain();
      gain.gain.value = Math.max(0, Math.min(1, volume));

      source.connect(gain);
      gain.connect(ctx.destination);
      source.start(0);
    } catch {
      // Ignore autoplay errors before user gesture
    }
  }
}
