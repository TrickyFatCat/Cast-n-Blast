/// @description PlayerControlsOverseer

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		var _gamepadButton = gp_shoulderrb;
		keyShootAuto = CheckGamepadButton(_gamepadButton);
		keyShootSemiAuto = CheckGamepadButtonPressed(_gamepadButton);
		keyInteract = CheckGamepadButtonPressed(gp_face1);
		keyShield = CheckGamepadButton(gp_shoulderlb);
		keyDash = CheckGamepadButton(gp_face1);
		actionStopShooting = CheckGamepadButtonReleased(_gamepadButton);
	break;
	
	case InputMethod.KeyboardMouse:
		var _mouseButton = mb_left;
		
		keyMoveUp = CheckKeyboardOrd("W");
		keyMoveLeft = CheckKeyboardOrd("A");
		keyMoveDown = CheckKeyboardOrd("S");
		keyMoveRight = CheckKeyboardOrd("D");
		keyShootAuto = mouse_check_button(_mouseButton);
		keyShootSemiAuto = mouse_check_button_pressed(_mouseButton);
		keyInteract = keyboard_check_pressed(ord("E"));
		keyShield = mouse_check_button(mb_right);
		keyDash = keyboard_check_pressed(vk_space);
		actionStopShooting = mouse_check_button_released(_mouseButton);
	break;
}