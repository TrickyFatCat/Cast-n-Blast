if (collisionEnable)
{
	instance_destroy(other);

	if (!timerIsTicking) && currentState == EntityState.Action
	{
		timerIsTicking = true;
		directionCurrent = other.directionCurrent;
	}
}