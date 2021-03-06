// Inherit the parent event
event_inherited();

with (explosion)
{
	image_speed = defaultImageSpeed;
	drawAlpha = 1;
	currentState = RocketExplosionState.Active;
	isDisplayingRadius = false;
}

PlaySoundAt(sfx_genericExplosion, 256, false);
SpawnSplatterEffect(x, y, spr_sootParticles, spr_sootParticles, 50, 4);