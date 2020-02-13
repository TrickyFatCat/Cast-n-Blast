// Inherit the parent event
event_inherited();

enum RocketExplosionState
{
	Inactive,
	Active
}

currentState = RocketExplosionState.Inactive;

defaultImageSpeed = image_speed;

image_speed = 0;
drawAlpha =0;
isDisplayingRadius = false;