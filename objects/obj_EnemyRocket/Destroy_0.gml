// Inherit the parent event
event_inherited();

with (explosion)
{
	image_speed = defaultImageSpeed;
	drawAlpha = 1;
	currentState = RocketExplosionState.Active;
}