if (sys_GameManager.keyDash && dashCharge > 0)
{
	previousState = currentState;
	if (previousState == PlayerState.Idle)
	{
		directionCurrent = point_direction(x, y, mouse_x, mouse_y);
	}
	currentState = PlayerState.Dash;
	velocity = dashVelocity;
	DecreaseDashCharge();
}