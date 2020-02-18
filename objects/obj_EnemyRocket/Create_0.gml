// Inherit the parent event
event_inherited();

rotationSpeed = 2.5;
freeFlightTime = SetTime(0.75); 
freeFlightTimer = 0;
minDistance = 96;
collisionEnable = false;

enum RocketState
{
	Start,
	Search,
	Attack,
	Explode
}

currentState = RocketState.Start;

targetX = 0;
targetY = 0;
explosionRadius = 32;
explosion = SpawnExplosion(x, y, obj_RocketExplosion, damage, explosionRadius);