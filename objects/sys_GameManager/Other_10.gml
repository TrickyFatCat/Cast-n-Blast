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
		keyDash = CheckGamepadButtonPressed(gp_face1);
		keyUltimateActivation = CheckGamepadButtonPressed(gp_face2);
		keyReload = CheckGamepadButtonPressed(gp_face3);
		keyNextWeapon = CheckGamepadButtonPressed(gp_padr);
		keyPreviousWeapon = CheckGamepadButtonPressed(gp_padl);
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
		keyDash = keyboard_check_pressed(vk_space);
		keyUltimateActivation = keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(ord("Z"));
		keyReload = keyboard_check_pressed(ord("R"));
		keyWeapon01 = keyboard_check_pressed(ord("1"));
		keyWeapon02 = keyboard_check_pressed(ord("2"));
		keyNextWeapon = mouse_wheel_up();
		keyPreviousWeapon = mouse_wheel_down();
	break;
}