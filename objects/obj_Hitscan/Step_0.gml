/// @description HitscanController

// Inherit the parent event
event_inherited();

switch currentState
{
	case HitscanState.Idle:
		drawAlpha = 0;
	break;
	
	case HitscanState.Active:
		drawAlpha = 1;
		dealingDamage = true;
		currentState = HitscanState.Finish;
	break;
	
	case HitscanState.Finish:
		dealingDamage = false;
		ProcessHitscan;
	break;
}

drawScaleX = SortHitscanCollisions(directionCurrent, collisionTargets);

SetCollisionSize();