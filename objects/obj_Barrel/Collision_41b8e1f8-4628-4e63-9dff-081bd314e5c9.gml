if (collisionEnable)
{
	instance_destroy(other);

	if (!timerIsTicking) && currentState == EnemyState.Action
	{
		timerIsTicking = true;
		directionCurrent = other.directionCurrent;
	}
}