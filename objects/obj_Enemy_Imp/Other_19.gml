/// @description Sprite controls

if (mainWeapon.currentCastState == CastState.Idle)
{
	var _directionToPlayer = CalculateDirectionToPlayer()
	if (_directionToPlayer > 90)
	{
		drawScaleX = -1;
	}
	else if (_directionToPlayer < 270)
	{
		drawScaleX = 1;
	}
}