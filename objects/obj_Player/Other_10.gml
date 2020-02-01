/// @description MovementControlsHandler

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		var _axisVertical = gamepad_axis_value(global.ActiveGamepad, gp_axislv);
		var _axisHorizontal = gamepad_axis_value(global.ActiveGamepad, gp_axislh);
		var _axisChanged = CheckGamepadAxis(global.ActiveGamepad, gp_axislv, gp_axislh);
		
		if (_axisChanged)
		{
			directionX = _axisHorizontal;
			directionY = _axisVertical;
		}
		else
		{
			directionX = 0;
			directionY = 0;
		}
	break;
	
	case InputMethod.KeyboardMouse:
		directionX = sys_GameManager.keyMoveRight - sys_GameManager.keyMoveLeft;
		directionY = sys_GameManager.keyMoveDown - sys_GameManager.keyMoveUp;
	break;
}

if (directionX != 0 || directionY != 0)
{
	currentState = PlayerState.Run;
}
else
{
	currentState = PlayerState.Idle;
}

if (sys_GameManager.keyDash && energy >= dashCost)
{
	previousState = currentState;
	currentState = PlayerState.Dash;
	velocity = dashVelocity;
	DecreaseEnergy(dashCost);
}