event_inherited();

#macro ProcessExplosion event_user(0);
if (explosionSound != noone)
{
	PlaySoundAt(explosionSound, 256, false);
}