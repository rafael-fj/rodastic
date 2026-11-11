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
  confirm: ['/assets/audio/sfx/sfx_gui_valid001.wav', '/assets/audio/sfx/sfx_gui_valid002.wav'],
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

export class RotasticAudioManager {
  private ctx: AudioContext | null = null;
  private buffers = new Map<string, AudioBuffer>();
  private loading = new Set<string>();
  private activeVoiceSource: AudioBufferSourceNode | null = null;
  private lastAnnouncerAt = 0;

  private bgmElement: HTMLAudioElement | null = null;
  private currentBgmTrack = '';
  public muted = false;

  private ensureContext(): AudioContext | null {
    if (this.muted || typeof window === 'undefined') return null;
    if (!this.ctx) {
      const AudioCtx =
        window.AudioContext ||
        (window as unknown as { webkitAudioContext: typeof AudioContext }).webkitAudioContext;
      if (AudioCtx) {
        this.ctx = new AudioCtx();
      }
    }
    if (this.ctx && this.ctx.state === 'suspended') {
      this.ctx.resume().catch(() => {});
    }
    return this.ctx;
  }

  public unlockAndResume(): void {
    this.ensureContext();
    if (this.bgmElement && !this.muted && this.bgmElement.paused) {
      this.bgmElement.play().catch(() => {});
    }
  }

  public setMuted(muted: boolean): void {
    this.muted = muted;
    if (this.bgmElement) {
      if (muted) {
        this.bgmElement.pause();
      } else {
        this.bgmElement.volume = 0.28;
        this.bgmElement.play().catch(() => {});
      }
    }
  }

  public setBgm(trackName: string): void {
    if (typeof window === 'undefined' || !trackName) return;
    if (this.currentBgmTrack === trackName && this.bgmElement) {
      if (!this.muted && this.bgmElement.paused) {
        this.bgmElement.play().catch(() => {});
      }
      return;
    }

    this.currentBgmTrack = trackName;
    if (this.bgmElement) {
      this.bgmElement.pause();
      this.bgmElement.src = '';
    }

    const audio = new Audio(`/assets/audio/bgm/${trackName}.mp3`);
    audio.loop = true;
    audio.volume = 0.28;
    audio.preload = 'auto';
    this.bgmElement = audio;
    if (!this.muted) {
      audio.play().catch(() => {});
    }
  }

  public preloadAll(): void {
    this.unlockAndResume();
    for (const urls of Object.values(SFX_POOLS)) {
      this.loadUrl(urls[0]).catch(() => {});
    }
    this.loadUrl(ANNOUNCER_POOLS.match_start[0]).catch(() => {});
    this.loadUrl(ANNOUNCER_POOLS.leader_0[0]).catch(() => {});
  }

  private async loadUrl(url: string): Promise<AudioBuffer | null> {
    if (this.buffers.has(url)) return this.buffers.get(url)!;
    if (this.loading.has(url)) return null;
    const ctx = this.ensureContext();
    if (!ctx) return null;

    this.loading.add(url);
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
      this.loading.delete(url);
    }
  }

  public play(key: SfxKey, volume = 0.48, pitchJitter = 0.06): void {
    if (this.muted) return;
    const pool = SFX_POOLS[key];
    const url = pool[Math.floor(Math.random() * pool.length)];
    this.playUrl(url, volume, pitchJitter);
  }

  public playCharacterVoice(characterId: CharacterId, kind: 'hurt' | 'death' | 'kill', volume = 0.52): void {
    if (this.muted) return;
    const pool = CHAR_VOICE_POOLS[characterId]?.[kind];
    if (!pool || pool.length === 0) return;
    const url = pool[Math.floor(Math.random() * pool.length)];
    this.playUrl(url, volume, 0.04);
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

    const ctx = this.ensureContext();
    if (!ctx) return;

    const cached = this.buffers.get(url);
    const playVoiceBuf = (buf: AudioBuffer) => {
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
        gain.connect(ctx.destination);
        source.onended = () => {
          if (this.activeVoiceSource === source) {
            this.activeVoiceSource = null;
          }
        };
        this.activeVoiceSource = source;
        source.start(0);
      } catch {
        // Ignore before gesture
      }
    };

    if (cached) {
      playVoiceBuf(cached);
    } else {
      this.loadUrl(url).then((buf) => {
        if (buf) playVoiceBuf(buf);
      });
    }
  }

  private playUrl(url: string, volume: number, pitchJitter: number): void {
    const ctx = this.ensureContext();
    if (!ctx) return;
    const cached = this.buffers.get(url);
    if (!cached) {
      this.loadUrl(url).then((buf) => {
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
