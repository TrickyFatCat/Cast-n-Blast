if (collisionEnable && other.dealingDamage)
{
	if (!timerIsTicking) && currentState == EnemyState.Action
	{
		timerIsTicking = true;
		directionCurrent = other.drawAngle;
	}
}