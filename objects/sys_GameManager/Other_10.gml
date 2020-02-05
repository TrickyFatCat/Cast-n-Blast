/// @description PlayerControlsOverseer

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		var _primaryShoot = gp_shoulderrb;
		var _secondaryShoot = gp_shoulderlb;
		keyShootAuto = CheckGamepadButton(_primaryShoot);
		keyShootSemiAuto = CheckGamepadButtonPressed(_primaryShoot);
		keySecondaryShootAuto = CheckGamepadButton(_secondaryShoot);
		keySecondaryShootSemiAuto = CheckGamepadButton(_secondaryShoot);
		keyInteract = CheckGamepadButtonPressed(gp_face1);
		keyShield = CheckGamepadButton(gp_shoulderl);
		keyDash = CheckGamepadButton(gp_face1);
		actionStopShooting = CheckGamepadButtonReleased(_gamepadButton);
	break;
	
	case InputMethod.KeyboardMouse:
		var _primaryShoot = mb_left;
		var _secondaryShoot = mb_right;
		keyMoveUp = CheckKeyboardOrd("W");
		keyMoveLeft = CheckKeyboardOrd("A");
		keyMoveDown = CheckKeyboardOrd("S");
		keyMoveRight = CheckKeyboardOrd("D");
		keyShootAuto = mouse_check_button(_primaryShoot);
		keyShootSemiAuto = mouse_check_button_pressed(_primaryShoot);
		keySecondaryShootAuto = mouse_check_button(_secondaryShoot);
		keySecondaryShootSemiAuto = mouse_check_button(_secondaryShoot);
		keyInteract = keyboard_check_pressed(ord("E"));
		keyShield = keyboard_check(vk_shift);
		keyDash = keyboard_check_pressed(vk_space);
		actionStopShooting = mouse_check_button_released(_primaryShoot) || mouse_check_button_released(_secondaryShoot);
	break;
}