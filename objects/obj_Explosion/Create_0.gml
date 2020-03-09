event_inherited();

#macro ExecuteExplosion event_user(0);
if (explosionSound != noone)
{
	PlaySoundAt(explosionSound, 256, false);
}

if (spawnSplatter)
{
	SpawnSplatterEffect(x, y, spr_sootParticles, spr_sootParticles, 50, 4);
}