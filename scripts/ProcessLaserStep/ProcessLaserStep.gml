/// @description LaserController

switch currentState
{
	case LaserState.Idle:
	break;

	case LaserState.Start:
		ExecuteStartSequence;
	break;
			
	case LaserState.Active:
	break;
			
	case LaserState.Finish:
		dealingDamage = false;
		ExecuteEndSequence;
	break;
}

if (!GameIsPaused() && currentState > LaserState.Idle)
{
	drawAngle = directionCurrent;
	drawScaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	SetCollisionSize();
}