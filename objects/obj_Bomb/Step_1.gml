//State machine

event_inherited();
var _gravity = 0.4;

switch currentState
{
	case BombState.Drop:	
		if (z + currentVelocityZ >= 0)
		{
			z += currentVelocityZ;
			currentVelocityZ -= _gravity;
			SetJumpShadowAlpha();
		}
		else
		{
			z = 0;
			velocityZ = 0;
			currentState = BombState.Activation;
		}
	break;
	
	case BombState.Activation:
		ExecuteActivation;
	break;
	
	case BombState.Idle:
		ExecuteIdle;
	break;
	
	case BombState.Destruction:
		ExecuteDestruction;
	break;
}