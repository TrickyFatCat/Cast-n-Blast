/// @description SetSize

if (!GameIsPaused())
{
	drawAngle = directionCurrent;
	drawScaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	SetCollisionSize();
}