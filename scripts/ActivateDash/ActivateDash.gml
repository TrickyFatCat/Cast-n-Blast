if (sys_GameManager.keyDash && dashCharge > 0)
{
	previousState = currentState;
	
	if (previousState == PlayerState.Idle)
	{
		directionCurrent = point_direction(x, y, mouse_x, mouse_y);
	}
	
	currentState = PlayerState.Dash;
	isInvulnerable = true;
	collisionEnable = false;
	velocity = dashVelocity;
	DecreaseDashCharge();
	audio_play_sound(sfx_dash, 0, false);
	
	for (var i = 0; i < 25; i++)
	{
		var _dustObject = instance_create_layer(x, y, layer, vfx_Dust);
		_dustObject.direction = point_direction(0, 0, directionX, directionY) - 180 + random_range(-45, 45);
		_dustObject.isMoving = true;
	}
}