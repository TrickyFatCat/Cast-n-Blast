//State machine

event_inherited();
var _gravity = 0.4;

switch currentState
{
	case BombState.Drop:	
		if (z + velocityZ >= 0)
		{
			z += velocityZ;
			velocityZ -= _gravity * global.TimeFactor;
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