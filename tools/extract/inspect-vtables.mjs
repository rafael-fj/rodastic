import fs from "node:fs";

const cm = JSON.parse(fs.readFileSync("reference/decompiled/rotastic-code-map.json", "utf8"));
const targets = [
  "CRotasticPhysicPlayer",
  "CRotasticPlayer",
  "CRotasticRope",
  "CRotasticRopeBeam",
  "CRotasticRopeUberBeam",
  "CAttachPoint",
  "CWall",
  "CGravityVortex",
  "CPickUp",
  "CModeMultiDeathMatch",
  "CModeMultiCollecte",
  "CRotasticEndMulti",
  "CRotasticTimer",
  "CSpawnPoint",
  "CSpawnArea",
  "CAIPlayerController",
];

const slotFreq = {};
for (const c of cm.classes) {
  c.vtableMethods.forEach((va, idx) => {
    const key = `${idx}:${va}`;
    slotFreq[key] = (slotFreq[key] || 0) + 1;
  });
}

for (const name of targets) {
  const cls = cm.classes.find((c) => c.className === name);
  if (!cls) continue;
  const overrides = [];
  cls.vtableMethods.forEach((va, idx) => {
    if ((slotFreq[`${idx}:${va}`] || 0) < 10) {
      overrides.push(`[${idx}]=${va}`);
    }
  });
  console.log(`${name} (size=${cls.sizeBytes}B, ctor=${cls.constructorVA}, vt=${cls.vtableVA}):`);
  console.log(`  Overrides (${overrides.length}): ${overrides.join(", ")}`);
}
