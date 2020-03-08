//State machine
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
			for (var i = 0; i < 10; i++)
			{
				var _direction = random(360);
				var _x = x + random_range(-10, 10);
				var _y = y + random_range(-5, 10);
				SpawnDust(vfx_Dust, _x, _y, true, _direction);
			}
		}
	break;
	
	case BombState.Activation:
		ExecuteActivation;
		if (velocity > 0)
		{
			for (var i = 0; i < 1; i++)
			{
				var _direction = directionCurrent - 180 + random_range(-30, 30);
				SpawnDust(vfx_Dust, x, y - 1, true, _direction);
			}
		}
	break;
	
	case BombState.Idle:
		ExecuteIdle;
	break;
	
	case BombState.Destruction:
		ExecuteDestruction;
	break;
}