# Catálogo Completo de Objetos e Mecânicas — 8 Mapas Multiplayer Deathmatch

> Gerado automaticamente por [`tools/extract/extract-deathmatch-maps.mjs`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/tools/extract/extract-deathmatch-maps.mjs) a partir dos pacotes `w_multi_dm_lvl*_fetm.pc`, `w_multi_dm_lvl*.pc` e `w_global.pc`.
> JSON completo em [`reference/decompiled/deathmatch-maps-spec.json`](file:///c:/Users/rafae/Documents/Coding/Vibecoding/Decompilation/rotastic/reference/decompiled/deathmatch-maps-spec.json).

> **Escopo:** Conforme verificado em `Lobby MapList DataTable` (`w_menurotastic_fetm.pc`), existem **8 arenas oficiais de Multiplayer Deathmatch** (`w_multi_dm_lvl01, 02, 04, 07, 09, 10, 11, 13`). Os mapas do modo **Collect** (`*coll*`) foram arquivados em `archive/collect-mode/`, e os mapas `w_ps3_deathmatch_*` pertencem à lista de campanha Solo.

## Resumo Geral dos 8 Mapas Deathmatch

| Mapa | Cenário / BGM | Pivôs | Paredes (Letais) | Movimentos / Mecânicas Especiais |
| :--- | :--- | :---: | :---: | :--- |
| `w_multi_dm_lvl01` | o_BG_Forest2 (`bgm_syl_donjon`) | 6 | 4 (1) | 9 rotações |
| `w_multi_dm_lvl02` | o_BG_VilleMarron (`bgm_syl_ville`) | 4 | 4 (0) | 1 rotações |
| `w_multi_dm_lvl04` | o_BG_Cimetery (`bgm_syl_foret`) | 5 | 7 (4) | 20 translações, 1 CMecaSwitchObject |
| `w_multi_dm_lvl07` | o_BGChateau, o_BGChateau01_Far, o_BGChateau01_Flags, o_BGChateau_Clouds (`bgm_syl_campagne`) | 5 | 5 (0) | Arena estática |
| `w_multi_dm_lvl09` | O_BG_Campagne, O_fOND_BGCampagne, o_BG_campagneWater, O_Home_Campagne, O_Ruine_Campagne (`bgm_syl_foret`) | 4 | 6 (3) | 4 translações |
| `w_multi_dm_lvl10` | o_BG_Forest (`bgm_syl_campagne`) | 4 | 3 (0) | Arena estática |
| `w_multi_dm_lvl11` | o_BG_VilleMarron (`bgm_syl_donjon`) | 5 | 5 (0) | Arena estática |
| `w_multi_dm_lvl13` | o_BGPort02, o_BGPort02_Clouds, o_BGPort02_Far, o_BGPort02_Water (`bgm_syl_cimetiere_alt`) | 5 | 3 (0) | 16 translações |

---

## `w_multi_dm_lvl01`

- **BGM:** `bgm_syl_donjon` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (1):**
  - `o_BG_Forest2` (`o_bg_forest2`): texturas = [`t_bgforet2soldat_c`, `t_bgforet203_c`, `t_bgforet2nuages_c`, `t_bgforet201_c`, `t_bgforet2souche_c`, `t_bgforet2elan_c`, `t_bgforet200_c`]
- **Props Visuais / Cenário (3):**
  - `o_poutremulti03` pos=`(935.7603, -20.7263)` rot=`0°` tex=[`t_multi03fond_c`]
  - `o_SerpentMulti03` pos=`(959.2531, 521.2192)` rot=`88.4056°` tex=[`t_multi03c_c`, `t_multi03a_c`, `t_multi03b_c`]
  - `o_vissemulti03` pos=`(960.0164, 522.7338)` rot=`0°` tex=[`t_multi03c_c`]
- **Pivôs / Âncoras (`CAttachPoint`, 6):**
  - `PRP_attachRef001`: `(720, 860)`
  - `PRP_attachRef002`: `(1200, 860)`
  - `PRP_attachRef003`: `(300, 540)`
  - `PRP_attachRef004`: `(1620, 540)`
  - `PRP_attachRef005`: `(720, 220)`
  - `PRP_attachRef006`: `(1200, 220)`
- **Paredes & Armadilhas (`CWall`, 4):**
  - `PRP_wallLeft` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[30,600]` mesh=`o_rebondecranbois_l`
  - `PRP_wallRight` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-30.0001,-600]..[0.0001,600]` mesh=`o_rebondecranbois_r`
  - `WallTop` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
  - `Mur001` [**LETAL**]: pos=`(959.405, 824.0381)` scale=`(0.5, 6)` rot=`0°` bbox=`[-50,-50.2801]..[50,49.7199]` mesh=`o_cubeunit_black`
- **Animações / Trajetórias Dinâmicas (`FlowGraph`):**
  - `Rotate` (`0x37332`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `10s`
  - `Rotate` (`0x3741f`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `10s`
  - `Rotate` (`0x3750c`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `10s`
  - `Rotate` (`0x375f9`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `7.5s`
  - `Rotate` (`0x376e6`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `7.5s`
  - `Rotate` (`0x377d3`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `7.5s`
  - `Rotate` (`0x378c0`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `5s`
  - `Rotate` (`0x379ad`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `5s`
  - `Rotate` (`0x37a9a`, target=`-80272507`): $\Delta\theta_Z = 120^\circ$ em `5s`

## `w_multi_dm_lvl02`

- **BGM:** `bgm_syl_ville` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (1):**
  - `o_BG_VilleMarron` (`o_bg_villemarron2`): texturas = [`t_bgville2maron00_c`, `t_bgville2marondragon_c`, `t_bgville2maronnuages_c`, `t_bgville2maron01_c`, `t_bgville2maronarmes_c`, `t_bgville2maronenseigne_c`, `t_bgville2maronbalance_c`]
- **Props Visuais / Cenário (5):**
  - `o_nacelleAne` pos=`(796.4126, 702.1677)` rot=`0°` tex=[`t_multi04_02_c`, `t_multi04_09_c`, `t_multi04_04_c`, `t_multi04_07_c`, `t_multi04_08_c`]
  - `o_nacelleLapin` pos=`(801.0181, 377.9149)` rot=`0°` tex=[`t_multi04_02_c`, `t_multi04_14_c`, `t_multi04_13_c`, `t_multi04_15_c`, `t_multi04_04_c`]
  - `o_nacelleMort` pos=`(1117.8435, 377.9149)` rot=`0°` tex=[`t_multi04_02_c`, `t_multi04_09_c`, `t_multi04_10_c`, `t_multi04_04_c`, `t_multi04_11_c`]
  - `o_nacelleRoi` pos=`(1117.8435, 702.1677)` rot=`0°` tex=[`t_multi04_02_c`, `t_multi04_05_c`, `t_multi04_06_c`, `t_multi04_04_c`]
  - `o_SmokeONroof` pos=`(?, ?)` rot=`0°` tex=[`t_fx_smokew_c`]
- **Pivôs / Âncoras (`CAttachPoint`, 4):**
  - `PRP_attachRef000`: `(340, 880)`
  - `PRP_attachRef001`: `(1580, 880)`
  - `PRP_attachRef002`: `(340, 220)`
  - `PRP_attachRef003`: `(1580, 220)`
- **Paredes & Armadilhas (`CWall`, 4):**
  - `Mur001` [ELÁSTICA]: pos=`(960, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-256,-256]..[256,256]` mesh=`o_m04_cube`
  - `WallTop` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
  - `PRP_background001` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-30.0001,-600]..[0.0001,600]` mesh=`o_rebondecranbois_r`
  - `PRP_wallLeft` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[30,600]` mesh=`o_rebondecranbois_l`
- **Animações / Trajetórias Dinâmicas (`FlowGraph`):**
  - `Rotate` (`0x18823`, target=`1340176284`): $\Delta\theta_Z = 90^\circ$ em `4s`

## `w_multi_dm_lvl04`

- **BGM:** `bgm_syl_foret` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (1):**
  - `o_BG_Cimetery` (`o_bg_cimetery2`): texturas = [`t_bgforetsoldat_c`, `t_bgcimet2ciel_c`, `t_bgcimet2persos_c`, `t_bgcimet2chauvesouris_c`, `t_bgcimet2nuages_c`, `t_bgcimet200_c`, `t_bgcimet2fantomes_c`, `t_bgcimet2tombes02_c`, `t_bgcimet2tombes01_c`, `t_bgcimet2arbre2_c`, `t_bgcimet2pendus_c`, `t_bgcimet2citrouilles_c`, `t_bgcimet2arbre1_c`, `t_bgcimet2brouillard_c`]
- **Props Visuais / Cenário (2):**
  - `o_levierBestiole_Vivante` pos=`(1920, 539.9997)` rot=`-89.9989°` tex=[`t_leviercrapeau_c`]
  - `o_levierBestiole_Dead` pos=`(1920, 539.9998)` rot=`-89.9989°` tex=[`t_levierdead_c`]
- **Pivôs / Âncoras (`CAttachPoint`, 5):**
  - `PRP_attachRef000`: `(340, 860)`
  - `PRP_attachRef001`: `(1580, 860)`
  - `PRP_attachRef002`: `(1270, 220)`
  - `PRP_attachRef003`: `(650, 220)`
  - `PRP_attachRef004`: `(960, 540)`
- **Paredes & Armadilhas (`CWall`, 7):**
  - `WallTop` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
  - `PRP_background001` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-30.0001,-600]..[0.0001,600]` mesh=`o_rebondecranbois_r`
  - `PRP_wallLeft` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[30,600]` mesh=`o_rebondecranbois_l`
  - `Scie001` [**LETAL**]: pos=`(-200, 860)` scale=`(0.8, 0.8)` rot=`0°` bbox=`[-219.1476,-219.5707]..[187.7894,206.1248]` mesh=`o_tueur_md08`
  - `Scie002` [**LETAL**]: pos=`(2120, 860)` scale=`(0.8, 0.8)` rot=`0°` bbox=`[-219.1476,-219.5707]..[187.7894,206.1248]` mesh=`o_tueur_md08`
  - `Scie003` [**LETAL**]: pos=`(2120, 220)` scale=`(0.8, 0.8)` rot=`0°` bbox=`[-219.1476,-219.5707]..[187.7894,206.1248]` mesh=`o_tueur_md08`
  - `Scie004` [**LETAL**]: pos=`(-200, 220)` scale=`(0.8, 0.8)` rot=`0°` bbox=`[-219.1476,-219.5707]..[187.7894,206.1248]` mesh=`o_tueur_md08`
- **Interruptores (`CMecaSwitchObject`):**
  - `PST_MecaSwitch`: pos=`(1920, 540)` rot=`-89.9989°` tex=[`t_levierbaseback_c`, `t_levierbaseoff_c`, `t_levierbaseon_c`, `t_levierbase_c`, `t_leviercrapeau_c`, `t_levierdead_c`]
- **Animações / Trajetórias Dinâmicas (`FlowGraph`):**
  - `MoveTo` (`0x18b07`, target=`-1372639692`): destino `(1580, 860)` em `8.9s`
  - `MoveTo` (`0x18ce0`, target=`-1372639692`): destino `(1580, 220)` em `3.2s`
  - `MoveTo` (`0x18dc9`, target=`-1372639692`): destino `(340, 220)` em `6.9s`
  - `MoveTo` (`0x18eb2`, target=`-1372639692`): destino `(340, 860)` em `3.2s`
  - `MoveTo` (`0x18f9b`, target=`-1372639692`): destino `(-200, 860)` em `2s`
  - `MoveTo` (`0x191d3`, target=`-1553200915`): destino `(340, 860)` em `8.9s`
  - `MoveTo` (`0x193ac`, target=`-1553200915`): destino `(340, 220)` em `3.2s`
  - `MoveTo` (`0x19495`, target=`-1553200915`): destino `(1580, 220)` em `6.9s`
  - `MoveTo` (`0x1957e`, target=`-1553200915`): destino `(1580, 860)` em `3.2s`
  - `MoveTo` (`0x19667`, target=`-1553200915`): destino `(2120, 860)` em `2s`
  - `MoveTo` (`0x1989f`, target=`-1481829030`): destino `(340, 220)` em `8.9s`
  - `MoveTo` (`0x19a78`, target=`-1481829030`): destino `(340, 860)` em `3.2s`
  - `MoveTo` (`0x19b61`, target=`-1481829030`): destino `(1580, 860)` em `6.9s`
  - `MoveTo` (`0x19c4a`, target=`-1481829030`): destino `(1580, 220)` em `3.2s`
  - `MoveTo` (`0x19d33`, target=`-1481829030`): destino `(2120, 220)` em `2s`
  - `MoveTo` (`0x19f0c`, target=`-1175829153`): destino `(1580, 220)` em `8.9s`
  - `MoveTo` (`0x1a0e5`, target=`-1175829153`): destino `(1580, 860)` em `3.2s`
  - `MoveTo` (`0x1a1ce`, target=`-1175829153`): destino `(340, 860)` em `6.9s`
  - `MoveTo` (`0x1a2b7`, target=`-1175829153`): destino `(340, 220)` em `3.2s`
  - `MoveTo` (`0x1a3a0`, target=`-1175829153`): destino `(-200, 220)` em `2s`

## `w_multi_dm_lvl07`

- **BGM:** `bgm_syl_campagne` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (4):**
  - `o_BGChateau` (`o_bgchateau2`): texturas = [`t_bgchateau2_cage_c`, `t_bgchateau2_dragon_c`, `t_bgchateau201_c`, `t_bgchateau2_ours_roche_c`, `t_bgchateau2_gardes_c`, `t_bgchateau200_c`, `t_bgchateau2_yeux_c`]
  - `o_BGChateau01_Far` (`o_bgchateau2_far`): texturas = [`t_bgchateau2_cage_c`, `t_bgchateau202_c`]
  - `o_BGChateau01_Flags` (`o_bgchateau2_flags`): texturas = [`t_bgchateau2_drapeaux_c`]
  - `o_BGChateau_Clouds` (`o_bgchateau2_clouds`): texturas = [`t_bgport2objets_c`, `t_bgchateau2_nuages_c`]
- **Pivôs / Âncoras (`CAttachPoint`, 5):**
  - `PRP_attachRef`: `(960, 540)`
  - `PRP_attachRef000`: `(500, 300)`
  - `PRP_attachRef001`: `(1420, 300)`
  - `PRP_attachRef002`: `(500, 780)`
  - `PRP_attachRef003`: `(1420, 780)`
- **Paredes & Armadilhas (`CWall`, 5):**
  - `Prop005` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`45.0029°` bbox=`[-150,-150]..[150,150]` mesh=`o_pierre_md01`
  - `Prop007` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`-45.0029°` bbox=`[-150,-150]..[150,150]` mesh=`o_pierre_md01`
  - `WallTop000` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
  - `PRP_wallLeft` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[32.0001,600]` mesh=`o_rebondecranpierre_l`
  - `PRP_wallRight` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-32.0001,-600]..[0.0001,600]` mesh=`o_rebondecranpierre_r`

## `w_multi_dm_lvl09`

- **BGM:** `bgm_syl_foret` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (5):**
  - `O_BG_Campagne` (`o_bg_campagne`): texturas = [`t_bgcampagnemaison_c`, `t_bgcampagneoiseaux_c`, `t_bgcampagnepont_c`, `t_bgcampagnepontpersos_c`, `t_bgcampagne00_c`, `t_bgcampagneane_c`]
  - `O_fOND_BGCampagne` (`o_fond_bgcampagne`): texturas = [`t_bgcampagnemaison_c`, `t_bgcampagne01_c`, `t_bgcampagnenuages00_c`, `t_bgcampagnenuages01_c`, `t_bgcampagnemoulin_c`, `t_bgcampagnevaches_c`, `t_bgcampagneruines_c`]
  - `o_BG_campagneWater` (`o_bg_campagnewater`): texturas = [`t_bgcampagnemaison_c`, `t_bgcampagne01_c`, `t_bgcampagneriviere_c`]
  - `O_Home_Campagne` (`o_home_campagne`): texturas = [`t_bgcampagnemaison_c`]
  - `O_Ruine_Campagne` (`o_ruine_campagne`): texturas = [`t_bgcampagneruines_c`]
- **Props Visuais / Cenário (4):**
  - `o_Armes` pos=`(125, 15)` rot=`0°` tex=[`t_armes_c`]
  - `o_multi04_BordTueur` pos=`(0.0395, 955.7363)` rot=`0°` tex=[`t_bordecrantue03_c`, `t_bordecrantue04_c`]
  - `o_multi04_BordTueur000` pos=`(1922.3608, 123.5783)` rot=`180°` tex=[`t_bordecrantue03_c`, `t_bordecrantue04_c`]
  - `o_SmokeONroof000` pos=`(?, ?)` rot=`0°` tex=[]
- **Pivôs / Âncoras (`CAttachPoint`, 4):**
  - `PRP_attachRef`: `(350, 300)`
  - `PRP_attachRef000`: `(960, 400)`
  - `PRP_attachRef001`: `(1570, 300)`
  - `PRP_attachRef002`: `(300, 850)`
- **Paredes & Armadilhas (`CWall`, 6):**
  - `MurTueur` [**LETAL**]: pos=`(125, 15)` scale=`(2.5, 0.5)` rot=`0°` bbox=`[-50,-50.2801]..[50,49.7199]` mesh=`o_cubeunit_black`
  - `MurTueurDroite` [**LETAL**]: pos=`(0, 955)` scale=`(0.5, 2.5)` rot=`0°` bbox=`[-50,-50.2801]..[50,49.7199]` mesh=`o_cubeunit_black`
  - `MurTueurGauche` [**LETAL**]: pos=`(1920, 125)` scale=`(0.5, 2.5)` rot=`0°` bbox=`[-50,-50.2801]..[50,49.7199]` mesh=`o_cubeunit_black`
  - `PRP_background001` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-30.0001,-600]..[0.0001,600]` mesh=`o_rebondecranbois_r`
  - `PRP_wallLeft` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[30,600]` mesh=`o_rebondecranbois_l`
  - `WallTop` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
- **Animações / Trajetórias Dinâmicas (`FlowGraph`):**
  - `MoveTo` (`0x188a6`, target=`2130505913`): destino `(1795, 0)` em `10s`
  - `MoveTo` (`0x189ec`, target=`2130505913`): destino `(165, 0)` em `10s`
  - `MoveTo` (`0x19059`, target=`459237351`): destino `(0, 125)` em `10s`
  - `MoveTo` (`0x19636`, target=`240095066`): destino `(1920, 955)` em `10s`

## `w_multi_dm_lvl10`

- **BGM:** `bgm_syl_campagne` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (1):**
  - `o_BG_Forest` (`o_bg_forest`): texturas = [`t_bgforetsoldat_c`, `t_bgforet03_c`, `t_bgforetnuages_c`, `t_bgforet01_c`, `t_bgforetsouche_c`, `t_bgforetelan_c`, `t_bgforet00_c`]
- **Pivôs / Âncoras (`CAttachPoint`, 4):**
  - `PRP_attachRef`: `(350, 250)`
  - `PRP_attachRef000`: `(960, 350)`
  - `PRP_attachRef001`: `(1570, 250)`
  - `PRP_attachRef002`: `(300, 850)`
- **Paredes & Armadilhas (`CWall`, 3):**
  - `PRP_background001` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-30.0001,-600]..[0.0001,600]` mesh=`o_rebondecranbois_r`
  - `PRP_wallLeft` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[30,600]` mesh=`o_rebondecranbois_l`
  - `WallTop` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`

## `w_multi_dm_lvl11`

- **BGM:** `bgm_syl_donjon` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (1):**
  - `o_BG_VilleMarron` (`o_bg_villemarron`): texturas = [`t_bgvillemaron00_c`, `t_bgvillemarondragon_c`, `t_bgvillemaronnuages_c`, `t_bgvillemaron01_c`, `t_bgvillemaronarmes_c`, `t_bgvillemaronenseigne_c`, `t_bgvillemaronbalance_c`]
- **Props Visuais / Cenário (4):**
  - `o_RebonMetal01_MD09` pos=`(653.634, 540)` rot=`180°` tex=[`t_rebonmetaltile01_c`, `t_rebonmetaltile03_c`]
  - `o_RebonMetal02_MD09` pos=`(1269.272, 540)` rot=`0°` tex=[`t_rebonmetaltile01_c`, `t_rebonmetaltile03_c`]
  - `o_SmokeONroof001` pos=`(?, ?)` rot=`0°` tex=[]
  - `o_SmokeONroof003` pos=`(?, ?)` rot=`0°` tex=[]
- **Pivôs / Âncoras (`CAttachPoint`, 5):**
  - `PRP_attachRef001`: `(960, 540)`
  - `PRP_attachRef004`: `(500, 900)`
  - `PRP_attachRef005`: `(1420, 900)`
  - `PRP_attachRef006`: `(1420, 180)`
  - `PRP_attachRef007`: `(500, 180)`
- **Paredes & Armadilhas (`CWall`, 5):**
  - `Prop006` [ELÁSTICA]: pos=`(653.634, 540)` scale=`(0.75, 3.5)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
  - `Prop009` [ELÁSTICA]: pos=`(1269.272, 540)` scale=`(0.75, 3.5)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
  - `PRP_background001` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-32.0001,-600]..[0.0001,600]` mesh=`o_rebondecranmetal_r`
  - `PRP_wallLeft000` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[32.0001,600]` mesh=`o_rebondecranmetal_l`
  - `WallTop` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`

## `w_multi_dm_lvl13`

- **BGM:** `bgm_syl_cimetiere_alt` | **Timer:** `120s` | **Viewport:** `1920×1080`
- **Camadas de Background (4):**
  - `o_BGPort02` (`o_bgport22`): texturas = [`t_bgport2objets_c`, `t_bgport201_c`, `t_bgport2bateau03_c`, `t_bgport203_c`, `t_bgport2bateau02_c`, `t_bgport200_c`, `t_bgport2bateau01_c`]
  - `o_BGPort02_Clouds` (`o_bgport22_clouds`): texturas = [`t_bgport2objets_c`, `t_bgport2nuages_c`]
  - `o_BGPort02_Far` (`o_bgport22_far`): texturas = [`t_bgport2objets_c`, `t_bgport202_c`]
  - `o_BGPort02_Water` (`o_bgport02_water`): texturas = [`t_bgportwateruv_c`]
- **Pivôs / Âncoras (`CAttachPoint`, 5):**
  - `PRP_attach001`: `(1620, 780)`
  - `PRP_attach002`: `(500, 300)`
  - `PRP_attach003`: `(1420, 300)`
  - `PRP_attach004`: `(300, 780)`
  - `PRP_attach005`: `(960, 540)`
- **Paredes & Armadilhas (`CWall`, 3):**
  - `PRP_background001` [ELÁSTICA]: pos=`(1920, 540)` scale=`(1, 1)` rot=`0°` bbox=`[-30.0001,-600]..[0.0001,600]` mesh=`o_rebondecranbois_r`
  - `PRP_wallLeft` [ELÁSTICA]: pos=`(0, 540)` scale=`(1, 1)` rot=`0°` bbox=`[0,-600]..[30,600]` mesh=`o_rebondecranbois_l`
  - `WallTop` [ELÁSTICA]: pos=`(960, 1480)` scale=`(3.84, 1)` rot=`0°` bbox=`[-25,-25]..[25,25]` mesh=`-`
- **Animações / Trajetórias Dinâmicas (`FlowGraph`):**
  - `MoveTo` (`0x18ba9`, target=`1878085457`): destino `(600, 0)` em `2s`
  - `MoveTo` (`0x18be9`, target=`1655859592`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x18e03`, target=`1878085457`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x18e43`, target=`1655859592`): destino `(600, 0)` em `2s`
  - `MoveTo` (`0x191da`, target=`1718842431`): destino `(600, 0)` em `2s`
  - `MoveTo` (`0x1921a`, target=`2016683066`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x19434`, target=`1718842431`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x19474`, target=`2016683066`): destino `(600, 0)` em `2s`
  - `MoveTo` (`0x19781`, target=`1878085457`): destino `(600, 0)` em `2s`
  - `MoveTo` (`0x19a4c`, target=`1655859592`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x19c24`, target=`1878085457`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x19eef`, target=`1718842431`): destino `(600, 0)` em `2s`
  - `MoveTo` (`0x1a0c7`, target=`1655859592`): destino `(600, 0)` em `2s`
  - `MoveTo` (`0x1a392`, target=`2016683066`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x1a56a`, target=`1718842431`): destino `(-600, 0)` em `2s`
  - `MoveTo` (`0x1a742`, target=`2016683066`): destino `(600, 0)` em `2s`

