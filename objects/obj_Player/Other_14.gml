/// @description WeaponRotationController

if (global.TimeFactor > 0)
{
	with (activeWeapon)
	{
		switch global.CurrentInput
		{
			case InputMethod.Gamepad:
				var _axisVertical = gamepad_axis_value(global.ActiveGamepad, gp_axisrv);
				var _axisHorizontal = gamepad_axis_value(global.ActiveGamepad, gp_axisrh);
				var _axisChanged = CheckGamepadAxis(global.ActiveGamepad, gp_axisrv, gp_axisrh);
				
				if (_axisChanged)
				{
					directionCurrent = point_direction(0, 0, _axisHorizontal, _axisVertical);
				}
			break;
			
			case InputMethod.KeyboardMouse:
				var _mouseDistance = point_distance(owner.x, owner.y, mouse_x, mouse_y);
				
				if (_mouseDistance > 3)
				{
					directionCurrent = point_direction(x, y - offsetY, mouse_x, mouse_y);
				}
			break;
		}
	}
	
	secondaryWeapon.directionCurrent = activeWeapon.directionCurrent;
	ultimateWeapon.directionCurrent = activeWeapon.directionCurrent;
}