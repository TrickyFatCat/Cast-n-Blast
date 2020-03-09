event_inherited();

#macro ProcessExplosion event_user(0);
if (explosionSound != noone)
{
	PlaySoundAt(explosionSound, 256, false);
}

SpawnSplatterEffect(x, y, spr_sootParticles, spr_sootParticles, 50, 4);