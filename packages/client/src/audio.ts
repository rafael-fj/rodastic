import type { CharacterId } from '@rotastic/physics';

/**
 * Full Rotastic Web Audio Engine:
 *   - Multi-variant authentic gameplay SFX pools (`/assets/audio/sfx/*.wav`)
 *   - Character-specific voice reactions (`knight`, `elf`, `pig`, `skeleton`)
 *   - Narrator / Announcer channel (`/assets/audio/voices/vcs_*.wav`)
 *   - Looping stage & menu BGM player (`/assets/audio/bgm/bgm_syl_*.mp3`)
 */

const SFX_POOLS = {
  select: ['/assets/audio/sfx/sfx_gui_select001.wav', '/assets/audio/sfx/sfx_gui_select002.wav'],
  confirm: [
    '/assets/audio/sfx/sfx_gui_valid001.wav',
    '/assets/audio/sfx/sfx_gui_valid002.wav',
    '/assets/audio/sfx/sfx_gui_valid003.wav',
  ],
  back: ['/assets/audio/sfx/sfx_gui_back001.wav'],
  countdown_tick: ['/assets/audio/sfx/sfx_gui_select001.wav'],
  gong: ['/assets/audio/sfx/sfx_gui_gong.wav'],
  podium: ['/assets/audio/sfx/sfx_gui_podium.wav'],
  timenearend: ['/assets/audio/sfx/sfx_gui_timenearend.wav'],
  multi_end: ['/assets/audio/sfx/jgl_multi_end.wav'],
  time_over: ['/assets/audio/sfx/jgl_time_over.wav'],
  diamond: ['/assets/audio/sfx/sfx_pickup_diamond.wav'],
  gem: ['/assets/audio/sfx/sfx_gui_partial_score.wav'],
  attach: [
    '/assets/audio/sfx/sfx_ropeattach-01.wav',
    '/assets/audio/sfx/sfx_ropeattach-02.wav',
    '/assets/audio/sfx/sfx_ropeattach-03.wav',
    '/assets/audio/sfx/sfx_ropeattach-04.wav',
  ],
  release: [
    '/assets/audio/sfx/sfx_ropedetach-01.wav',
    '/assets/audio/sfx/sfx_ropedetach-02.wav',
    '/assets/audio/sfx/sfx_ropedetach-03.wav',
    '/assets/audio/sfx/sfx_ropedetach-04.wav',
  ],
  invert: [
    '/assets/audio/sfx/sfx_ropeattach_alt-01.wav',
    '/assets/audio/sfx/sfx_ropeattach_alt-02.wav',
    '/assets/audio/sfx/sfx_ropeattach_alt-03.wav',
  ],
  spawndrop: [
    '/assets/audio/sfx/sfx_drop_1.wav',
    '/assets/audio/sfx/sfx_drop_2.wav',
    '/assets/audio/sfx/sfx_drop_3.wav',
    '/assets/audio/sfx/sfx_drop_4.wav',
  ],
  bounce: [
    '/assets/audio/sfx/sfx_bounce_1.wav',
    '/assets/audio/sfx/sfx_bounce_2.wav',
    '/assets/audio/sfx/sfx_bouncewood-01.wav',
    '/assets/audio/sfx/sfx_bouncestone-01.wav',
  ],
  pvp_bump: [
    '/assets/audio/sfx/sfx_bouncemetal-01.wav',
    '/assets/audio/sfx/sfx_bouncemetal-02.wav',
    '/assets/audio/sfx/sfx_impactsword-01.wav',
  ],
  wallbreak: [
    '/assets/audio/sfx/sfx_ing_breakablewoodbox-01.wav',
    '/assets/audio/sfx/sfx_ing_breakablewoodbox-02.wav',
  ],
  shieldbreak: [
    '/assets/audio/sfx/sfx_clang.wav',
    '/assets/audio/sfx/sfx_beambreak1.wav',
    '/assets/audio/sfx/sfx_beambreak2.wav',
  ],
  ropecut: [
    '/assets/audio/sfx/sfx_ropecut-01.wav',
    '/assets/audio/sfx/sfx_ropecut-02.wav',
    '/assets/audio/sfx/sfx_ropecut-03.wav',
    '/assets/audio/sfx/sfx_cut.wav',
  ],
  slaughter: [
    '/assets/audio/sfx/sfx_impactsword-02.wav',
    '/assets/audio/sfx/sfx_impactsword-03.wav',
  ],
  trick: [
    '/assets/audio/sfx/sfx_trick1.wav',
    '/assets/audio/sfx/sfx_trick2.wav',
    '/assets/audio/sfx/sfx_trick3.wav',
    '/assets/audio/sfx/sfx_trick4.wav',
  ],
  switchtoggle: ['/assets/audio/sfx/sfx_ing_snake_lever_activate-01.wav'],
  death: [
    '/assets/audio/sfx/sfx_deathgeneric-01.wav',
    '/assets/audio/sfx/sfx_deathgeneric-02.wav',
    '/assets/audio/sfx/sfx_deathgeneric-03.wav',
  ],
  respawn: ['/assets/audio/sfx/sfx_ing_warpzone-01.wav'],
} as const;

const CHAR_VOICE_POOLS: Record<CharacterId, Record<'hurt' | 'death' | 'kill', string[]>> = {
  0: {
    hurt: ['/assets/audio/sfx/sfx_player_knight_hurt-01.wav', '/assets/audio/sfx/sfx_player_knight_hurt-02.wav'],
    death: ['/assets/audio/sfx/sfx_player_knight_death-01.wav', '/assets/audio/sfx/sfx_player_knight_death-02.wav'],
    kill: ['/assets/audio/sfx/sfx_player_knight_kill-05.wav', '/assets/audio/sfx/sfx_player_knight_kill-09.wav'],
  },
  1: {
    hurt: ['/assets/audio/sfx/sfx_player_elf_hurt-01.wav', '/assets/audio/sfx/sfx_player_elf_hurt-02.wav'],
    death: ['/assets/audio/sfx/sfx_player_elf_death-01.wav', '/assets/audio/sfx/sfx_player_elf_death-02.wav'],
    kill: ['/assets/audio/sfx/sfx_player_elf_kill-01.wav', '/assets/audio/sfx/sfx_player_elf_kill-02.wav'],
  },
  2: {
    hurt: ['/assets/audio/sfx/sfx_player_pig_hurt-01.wav', '/assets/audio/sfx/sfx_player_pig_hurt-02.wav'],
    death: ['/assets/audio/sfx/sfx_player_pig_death-01.wav', '/assets/audio/sfx/sfx_player_pig_death-02.wav'],
    kill: ['/assets/audio/sfx/sfx_player_pig_kill-01.wav', '/assets/audio/sfx/sfx_player_pig_kill-02.wav'],
  },
  3: {
    hurt: ['/assets/audio/sfx/sfx_player_skeleton_hurt-01.wav', '/assets/audio/sfx/sfx_player_skeleton_hurt-04.wav'],
    death: ['/assets/audio/sfx/sfx_player_skeleton_death-04.wav', '/assets/audio/sfx/sfx_player_skeleton_death-06.wav'],
    kill: ['/assets/audio/sfx/sfx_player_skeleton_kill-06.wav', '/assets/audio/sfx/sfx_player_skeleton_kill-07.wav'],
  },
};

const ANNOUNCER_POOLS = {
  match_start: ['/assets/audio/voices/vcs_misc_go.wav', '/assets/audio/voices/vcs_misc_gogogo.wav'],
  leader_0: ['/assets/audio/voices/vcs_ig_leader_viking.wav'],
  leader_1: ['/assets/audio/voices/vcs_ig_leader_elf.wav'],
  leader_2: ['/assets/audio/voices/vcs_ig_leader_boar.wav'],
  leader_3: ['/assets/audio/voices/vcs_ig_leader_skeleton.wav'],
  widening_0: ['/assets/audio/voices/vcs_ig_wideninggap_viking.wav'],
  widening_1: ['/assets/audio/voices/vcs_ig_wideninggap_elf.wav'],
  widening_2: ['/assets/audio/voices/vcs_ig_wideninggap_boar.wav'],
  widening_3: ['/assets/audio/voices/vcs_ig_wideninggap_skeleton.wav'],
  suicide: [
    '/assets/audio/voices/vcs_ig_suicide1.wav',
    '/assets/audio/voices/vcs_ig_suicide2.wav',
    '/assets/audio/voices/vcs_ig_suicide3.wav',
  ],
  cut: ['/assets/audio/voices/vcs_ig_real_cut.wav', '/assets/audio/voices/vcs_ig_real_pingpong.wav'],
  getit: ['/assets/audio/voices/vcs_ig_real_getit.wav', '/assets/audio/voices/vcs_ig_real_rotastic.wav'],
  kill_streak: [
    '/assets/audio/voices/vcs_deathmatch_quickkill.wav',
    '/assets/audio/voices/vcs_deathmatch_rowkill.wav',
    '/assets/audio/voices/vcs_ig_revengekill.wav',
  ],
  time_middle: ['/assets/audio/voices/vcs_ig_time_middle.wav'],
  time_nearend: ['/assets/audio/voices/vcs_ig_time_nearend.wav'],
  sudden_death: ['/assets/audio/voices/vcs_ig_time_strugle.wav'],
  time_end: ['/assets/audio/voices/vcs_ig_time_end.wav'],
} as const;

export type SfxKey = keyof typeof SFX_POOLS;
export type AnnouncerKey = keyof typeof ANNOUNCER_POOLS;

const BGM_BASE_VOLUME = 0.28;
const BGM_DUCK_FACTOR = 0.48;
const BGM_FADE_IN_SEC = 0.45;
const BGM_CROSSFADE_OUT_SEC = 0.35;
const BGM_ASSET_REV = '2';

function bgmUrl(trackName: string): string {
  return `/assets/audio/bgm/${trackName}.mp3?v=${BGM_ASSET_REV}`;
}

const GUI_SFX_KEYS = new Set<SfxKey>([
  'select',
  'confirm',
  'back',
  'countdown_tick',
  'gong',
  'podium',
  'timenearend',
  'multi_end',
  'time_over',
]);

export class RotasticAudioManager {
  private ctx: AudioContext | null = null;
  private masterGain: GainNode | null = null;
  private bgmBusGain: GainNode | null = null;
  private sfxGain: GainNode | null = null;
  private voiceGain: GainNode | null = null;

  private buffers = new Map<string, AudioBuffer>();
  private inFlightLoads = new Map<string, Promise<AudioBuffer | null>>();
  private activeVoiceSource: AudioBufferSourceNode | null = null;
  private lastAnnouncerAt = 0;

  private activeBgmSource: AudioBufferSourceNode | null = null;
  private activeBgmGain: GainNode | null = null;
  private activeBgmTrack = '';
  private fallbackBgmElement: HTMLAudioElement | null = null;
  private bgmRequestSeq = 0;
  private bgmPaused = false;
  private bgmDucked = false;
  private currentBgmTrack = '';
  public muted = false;

  private ensureContext(createIfMissing = true): AudioContext | null {
    if (typeof window === 'undefined') return null;
    if (!this.ctx && createIfMissing) {
      const AudioCtx =
        window.AudioContext ||
        (window as unknown as { webkitAudioContext: typeof AudioContext }).webkitAudioContext;
      if (AudioCtx) {
        const ctx = new AudioCtx();
        const master = ctx.createGain();
        master.gain.value = this.muted ? 0 : 1;
        master.connect(ctx.destination);

        const bgmBus = ctx.createGain();
        bgmBus.gain.value = this.computeBgmBusTarget();
        bgmBus.connect(master);

        const sfxBus = ctx.createGain();
        sfxBus.gain.value = 1;
        sfxBus.connect(master);

        const voiceBus = ctx.createGain();
        voiceBus.gain.value = 1;
        voiceBus.connect(master);

        ctx.addEventListener('statechange', () => {
          if (ctx.state === 'running') {
            this.ensureCurrentBgmPlaying();
          }
        });

        this.ctx = ctx;
        this.masterGain = master;
        this.bgmBusGain = bgmBus;
        this.sfxGain = sfxBus;
        this.voiceGain = voiceBus;
      }
    }
    return this.ctx;
  }

  private computeBgmBusTarget(): number {
    if (this.bgmPaused) return 0;
    return this.bgmDucked ? BGM_BASE_VOLUME * BGM_DUCK_FACTOR : BGM_BASE_VOLUME;
  }

  private updateBgmBusGain(rampSec = 0.16): void {
    const ctx = this.ctx;
    const bgmBus = this.bgmBusGain;
    if (!ctx || !bgmBus) return;
    const now = ctx.currentTime;
    const target = this.computeBgmBusTarget();
    bgmBus.gain.cancelScheduledValues(now);
    bgmBus.gain.setValueAtTime(bgmBus.gain.value, now);
    bgmBus.gain.linearRampToValueAtTime(target, now + rampSec);
  }

  public unlockAndResume(): void {
    const ctx = this.ensureContext(true);
    if (!ctx) return;
    if (ctx.state === 'suspended') {
      ctx
        .resume()
        .then(() => {
          this.ensureCurrentBgmPlaying();
        })
        .catch(() => {});
    } else if (ctx.state === 'running') {
      this.ensureCurrentBgmPlaying();
    }
    if (
      this.fallbackBgmElement &&
      !this.muted &&
      !this.bgmPaused &&
      this.fallbackBgmElement.paused
    ) {
      this.fallbackBgmElement.play().catch(() => {});
    }
  }

  public setMuted(muted: boolean): void {
    this.muted = muted;
    if (this.ctx && this.masterGain) {
      const now = this.ctx.currentTime;
      this.masterGain.gain.cancelScheduledValues(now);
      this.masterGain.gain.setValueAtTime(this.masterGain.gain.value, now);
      this.masterGain.gain.linearRampToValueAtTime(muted ? 0 : 1, now + 0.06);
    }
    if (this.fallbackBgmElement) {
      if (muted) {
        this.fallbackBgmElement.pause();
      } else {
        this.fallbackBgmElement.volume = BGM_BASE_VOLUME;
        this.fallbackBgmElement.play().catch(() => {});
      }
    }
    if (!muted) {
      this.unlockAndResume();
    }
  }

  /**
   * Mirrors `OnBGMPause` (`0x00566D10`): ducks/mutes the active `"bgm"` stream without resetting track choice.
   */
  public setBgmPaused(paused: boolean): void {
    if (this.bgmPaused === paused) return;
    this.bgmPaused = paused;
    this.updateBgmBusGain(0.18);
    if (this.fallbackBgmElement) {
      if (paused) {
        this.fallbackBgmElement.pause();
      } else if (!this.muted) {
        this.fallbackBgmElement.play().catch(() => {});
      }
    }
    if (!paused && !this.muted) {
      this.ensureCurrentBgmPlaying();
    }
  }

  public setBgm(trackName: string): void {
    if (typeof window === 'undefined' || !trackName) return;
    const prevDesired = this.currentBgmTrack;
    this.currentBgmTrack = trackName;

    if (prevDesired === trackName && (this.activeBgmTrack === trackName || this.fallbackBgmElement)) {
      this.ensureCurrentBgmPlaying();
      return;
    }

    const seq = ++this.bgmRequestSeq;
    const ctx = this.ensureContext(true);
    if (!ctx) return;

    void this.startBgmPlayback(trackName, seq);
  }

  private ensureCurrentBgmPlaying(): void {
    if (this.muted || this.bgmPaused || !this.currentBgmTrack) return;
    if (this.activeBgmTrack === this.currentBgmTrack && this.activeBgmSource) return;
    if (this.fallbackBgmElement) {
      if (this.fallbackBgmElement.paused) {
        this.fallbackBgmElement.play().catch(() => {});
      }
      return;
    }
    if (this.ctx && this.ctx.state === 'running') {
      const seq = ++this.bgmRequestSeq;
      void this.startBgmPlayback(this.currentBgmTrack, seq);
    }
  }

  private fadeOutActiveBgm(fadeSec = BGM_CROSSFADE_OUT_SEC): void {
    if (this.fallbackBgmElement) {
      this.fallbackBgmElement.pause();
      this.fallbackBgmElement.src = '';
      this.fallbackBgmElement = null;
    }
    const oldSource = this.activeBgmSource;
    const oldGain = this.activeBgmGain;
    this.activeBgmSource = null;
    this.activeBgmGain = null;
    this.activeBgmTrack = '';

    if (!oldSource || !oldGain || !this.ctx) return;
    const ctx = this.ctx;
    const now = ctx.currentTime;
    try {
      oldGain.gain.cancelScheduledValues(now);
      oldGain.gain.setValueAtTime(oldGain.gain.value, now);
      oldGain.gain.linearRampToValueAtTime(0, now + fadeSec);
      oldSource.stop(now + fadeSec + 0.03);
    } catch {
      try {
        oldSource.stop();
      } catch {
        // Already stopped
      }
    }
  }

  private async startBgmPlayback(trackName: string, seq: number): Promise<void> {
    const url = bgmUrl(trackName);
    const buf = await this.loadUrl(url);

    // Abort if track switched while fetching/decoding
    if (seq !== this.bgmRequestSeq || this.currentBgmTrack !== trackName) {
      return;
    }

    const ctx = this.ctx;
    const bgmBus = this.bgmBusGain;
    if (buf && ctx && bgmBus) {
      if (ctx.state !== 'running') {
        // Wait for next user gesture / statechange to start gapless AudioBuffer playback
        return;
      }

      this.fadeOutActiveBgm(BGM_CROSSFADE_OUT_SEC);

      const source = ctx.createBufferSource();
      source.buffer = buf;
      source.loop = true;

      const trackGain = ctx.createGain();
      const now = ctx.currentTime;
      trackGain.gain.setValueAtTime(0, now);
      trackGain.gain.linearRampToValueAtTime(1, now + BGM_FADE_IN_SEC);

      source.connect(trackGain);
      trackGain.connect(bgmBus);
      source.start(now);

      this.activeBgmSource = source;
      this.activeBgmGain = trackGain;
      this.activeBgmTrack = trackName;
      return;
    }

    // Fallback to streaming HTMLAudioElement if Web Audio decode failed in this browser
    if (!buf && this.currentBgmTrack === trackName) {
      this.fadeOutActiveBgm(0.1);
      const audio = new Audio(url);
      audio.loop = true;
      audio.volume = BGM_BASE_VOLUME;
      audio.preload = 'auto';
      this.fallbackBgmElement = audio;
      this.activeBgmTrack = trackName;
      if (!this.muted && !this.bgmPaused) {
        audio.play().catch(() => {});
      }
    }
  }

  public preloadAll(): void {
    this.unlockAndResume();
    if (this.currentBgmTrack) {
      void this.loadUrl(bgmUrl(this.currentBgmTrack));
    }
    for (const urls of Object.values(SFX_POOLS)) {
      void this.loadUrl(urls[0]);
    }
    void this.loadUrl(ANNOUNCER_POOLS.match_start[0]);
    void this.loadUrl(ANNOUNCER_POOLS.leader_0[0]);
  }

  private loadUrl(url: string): Promise<AudioBuffer | null> {
    const cached = this.buffers.get(url);
    if (cached) return Promise.resolve(cached);

    const existing = this.inFlightLoads.get(url);
    if (existing) return existing;

    const ctx = this.ensureContext(true);
    if (!ctx) return Promise.resolve(null);

    const promise = (async (): Promise<AudioBuffer | null> => {
      try {
        const res = await fetch(url);
        if (!res.ok) return null;
        const arr = await res.arrayBuffer();
        const audioBuf = await ctx.decodeAudioData(arr);
        this.buffers.set(url, audioBuf);
        return audioBuf;
      } catch {
        return null;
      } finally {
        this.inFlightLoads.delete(url);
      }
    })();

    this.inFlightLoads.set(url, promise);
    return promise;
  }

  public play(
    key: SfxKey,
    volume = 0.48,
    pitchJitter?: number,
    playbackRate = 1.0
  ): void {
    if (this.muted) return;
    const pool = SFX_POOLS[key];
    if (!pool) return;
    const url = pool[Math.floor(Math.random() * pool.length)];
    const effectiveJitter =
      pitchJitter !== undefined ? pitchJitter : GUI_SFX_KEYS.has(key) ? 0 : 0.06;
    this.playUrl(url, volume, effectiveJitter, playbackRate);
  }

  public playCharacterVoice(characterId: CharacterId, kind: 'hurt' | 'death' | 'kill', volume = 0.52): void {
    if (this.muted) return;
    const pool = CHAR_VOICE_POOLS[characterId]?.[kind];
    if (!pool || pool.length === 0) return;
    const url = pool[Math.floor(Math.random() * pool.length)];
    this.playUrl(url, volume, 0.04, 1.0);
  }

  public playAnnouncer(key: AnnouncerKey, minIntervalMs = 2400, volume = 0.8): void {
    if (this.muted) return;
    const now = performance.now();
    if (minIntervalMs > 0 && now - this.lastAnnouncerAt < minIntervalMs) {
      return;
    }
    const pool: readonly string[] | undefined = ANNOUNCER_POOLS[key];
    if (!pool || pool.length === 0) return;
    const url = pool[Math.floor(Math.random() * pool.length)];
    this.lastAnnouncerAt = now;

    const ctx = this.ensureContext(true);
    if (!ctx) return;

    const playVoiceBuf = (buf: AudioBuffer) => {
      if (this.muted) return;
      try {
        if (this.activeVoiceSource) {
          try {
            this.activeVoiceSource.stop();
          } catch {
            // Already finished
          }
        }
        const source = ctx.createBufferSource();
        source.buffer = buf;
        const gain = ctx.createGain();
        gain.gain.value = Math.max(0, Math.min(1, volume));
        source.connect(gain);
        gain.connect(this.voiceGain ?? ctx.destination);

        this.bgmDucked = true;
        this.updateBgmBusGain(0.12);

        source.onended = () => {
          if (this.activeVoiceSource === source) {
            this.activeVoiceSource = null;
            this.bgmDucked = false;
            this.updateBgmBusGain(0.35);
          }
        };
        this.activeVoiceSource = source;
        source.start(0);
      } catch {
        // Ignore before gesture
      }
    };

    const cached = this.buffers.get(url);
    if (cached) {
      playVoiceBuf(cached);
    } else {
      void this.loadUrl(url).then((buf) => {
        if (buf) playVoiceBuf(buf);
      });
    }
  }

  private playUrl(
    url: string,
    volume: number,
    pitchJitter: number,
    playbackRate = 1.0
  ): void {
    const ctx = this.ensureContext(true);
    if (!ctx) return;
    const cached = this.buffers.get(url);
    if (!cached) {
      void this.loadUrl(url).then((buf) => {
        if (buf) this.playBuffer(ctx, buf, volume, pitchJitter, playbackRate);
      });
      return;
    }
    this.playBuffer(ctx, cached, volume, pitchJitter, playbackRate);
  }

  private playBuffer(
    ctx: AudioContext,
    buf: AudioBuffer,
    volume: number,
    pitchJitter: number,
    playbackRate = 1.0
  ): void {
    if (this.muted) return;
    try {
      const source = ctx.createBufferSource();
      source.buffer = buf;
      const jitter = pitchJitter > 0 ? (Math.random() * 2 - 1) * pitchJitter : 0;
      source.playbackRate.value = Math.max(0.25, Math.min(4.0, playbackRate * (1 + jitter)));

      const gain = ctx.createGain();
      gain.gain.value = Math.max(0, Math.min(1, volume));

      source.connect(gain);
      gain.connect(this.sfxGain ?? ctx.destination);
      source.start(0);
    } catch {
      // Ignore autoplay errors before user gesture
    }
  }
}
