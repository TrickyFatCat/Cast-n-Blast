if (collisionEnable)
{
	if (!timerIsTicking) && currentState == EnemyState.Action
	{
		timerIsTicking = true;
		directionCurrent = other.drawAngle;
	}
}