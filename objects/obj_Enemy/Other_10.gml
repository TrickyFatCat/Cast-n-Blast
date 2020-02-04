/// @description EnemyHealthPointsReader

if hitPoints <= 0
{
	currentState = EnemyState.Trancendence;
	previousScaleY = sign(drawScaleX);
	if (isShooting)
	{
		isShooting = false;
	}
}