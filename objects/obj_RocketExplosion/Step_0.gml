switch (currentState)
{
	case RocketExplosionState.Inactive:
		image_speed = 0;
	break;
	
	case RocketExplosionState.Active:
		ExecuteExplosion;
	break;
}