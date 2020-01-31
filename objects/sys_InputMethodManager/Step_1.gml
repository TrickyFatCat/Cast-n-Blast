/// @description InputSwitcher

var _listSize = ds_list_size(connectedGamepads);

if (_listSize != 0)
{
	for (var i = 0; i < _listSize; i++)
	{
		var _slot = connectedGamepads[| i];
		
		var _leftStickV = gamepad_axis_value(_slot, gp_axislv) != 0;
		var _leftStickH = gamepad_axis_value(_slot, gp_axislh) != 0;
		var _rightStickV = gamepad_axis_value(_slot, gp_axisrv) != 0;
		var _rightStickH = gamepad_axis_value(_slot, gp_axisrh) != 0;

		for (var k = gp_face1; k < gp_axisrv; k++) 
		{
			if (gamepad_button_check_pressed(_slot, k)) 
			{
				global.CurrentInput = InputMethod.Gamepad;
				SetActiveGamepad(_slot);
			}
		}

		if (_leftStickV && _leftStickH) || (_rightStickV && _rightStickH)
		{
			global.CurrentInput = InputMethod.Gamepad;
			SetActiveGamepad(_slot);
		}
	}
	
	if (global.CurrentInput != InputMethod.KeyboardMouse)
	{
		var _mouseKeyPressed = mouse_check_button_pressed(mb_any);
		var _keyboardKeyPressed = keyboard_check_pressed(vk_anykey);
		
		if (_mouseKeyPressed || _keyboardKeyPressed)
		{
			global.CurrentInput = InputMethod.KeyboardMouse;
		}
	}
}