/// @description PlayerControlsOverseer

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		var _primaryShoot = gp_shoulderrb;
		var _secondaryShoot = gp_shoulderlb;
		keyShootAuto = CheckGamepadButton(_primaryShoot);
		keyShootSemiAuto = CheckGamepadButtonPressed(_primaryShoot);
		//keySecondaryShootAuto = CheckGamepadButton(_secondaryShoot);
		//keySecondaryShootSemiAuto = CheckGamepadButton(_secondaryShoot);
		keyInteract = CheckGamepadButtonPressed(gp_face1);
		keyDash = CheckGamepadButtonPressed(gp_shoulderlb);
		keyUltimateActivation = CheckGamepadButtonPressed(gp_stickl);
		keyReload = CheckGamepadButtonPressed(gp_face3);
		keyNextWeapon = CheckGamepadButtonPressed(gp_shoulderr);
		keyPreviousWeapon = CheckGamepadButtonPressed(gp_shoulderl);
	break;
	
	case InputMethod.KeyboardMouse:
		switch (global.KeyboardLayout)
		{
			case KeyboardLayout.QWERTY:
				keyMoveUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
				keyMoveDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
				keyMoveLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
				keyMoveRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
				keyInteract = keyboard_check_pressed(ord("E"));
				keyUltimateActivation = keyboard_check_pressed(ord("Q"));
			break;
		
			case KeyboardLayout.AZERTY:
				keyMoveUp = keyboard_check(ord("Z")) || keyboard_check(vk_up);
				keyMoveDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
				keyMoveLeft = keyboard_check(ord("Q")) || keyboard_check(vk_left);
				keyMoveRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
				keyInteract = keyboard_check_pressed(ord("E"));
				keyUltimateActivation = keyboard_check_pressed(ord("A"));
			break;
		
			case KeyboardLayout.DVORAK:
				keyMoveUp = keyboard_check(ord(",")) || keyboard_check(vk_up);
				keyMoveDown = keyboard_check(ord("O")) || keyboard_check(vk_down);
				keyMoveLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
				keyMoveRight = keyboard_check(ord("E")) || keyboard_check(vk_right);
				keyInteract = keyboard_check_pressed(ord(">"));
				keyUltimateActivation = keyboard_check_pressed(ord("'"));
			break;
		}
		var _primaryShoot = mb_left;
		var _secondaryShoot = mb_right;
		keyShootAuto = mouse_check_button(_primaryShoot);
		keyShootSemiAuto = mouse_check_button_pressed(_primaryShoot);
		keySecondaryShootAuto = mouse_check_button(_secondaryShoot);
		keySecondaryShootSemiAuto = mouse_check_button(_secondaryShoot);
		keyDash = keyboard_check_pressed(vk_space);
		keyWeapon01 = keyboard_check_pressed(ord("1"));
		keyWeapon02 = keyboard_check_pressed(ord("2"));
		keyWeapon03 = keyboard_check_pressed(ord("3"));
		keyWeapon04 = keyboard_check_pressed(ord("4"));
		keyNextWeapon = mouse_wheel_up();
		keyPreviousWeapon = mouse_wheel_down();
	break;
}