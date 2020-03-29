/// @description PlayerMenuControls

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		keyMenuUp = CheckGamepadButtonPressed(gp_padu);
		keyMenuDown = CheckGamepadButtonPressed(gp_padd);
		keyMenuLeft = CheckGamepadButtonPressed(gp_axislh) < 0 || CheckGamepadButtonPressed(gp_padl);
		keyMenuRight = CheckGamepadButtonPressed(gp_axislh) > 0 || CheckGamepadButtonPressed(gp_padr);
		keyMenuAccept = CheckGamepadButtonPressed(gp_face1);
		keyMenuBack = CheckGamepadButtonPressed(gp_face2);
		keyPause = CheckGamepadButtonPressed(gp_start);
	break;
	
	case InputMethod.KeyboardMouse:
		switch (global.KeyboardLayout)
		{
			case KeyboardLayout.QWERTY:
				keyMenuUp = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
				keyMenuDown = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
				keyMenuLeft = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
				keyMenuRight = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
			break;
		
			case KeyboardLayout.AZERTY:
				keyMenuUp = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_up);
				keyMenuDown = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
				keyMenuLeft = keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(vk_left);
				keyMenuRight = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
			break;
		
			case KeyboardLayout.DVORAK:
				keyMenuUp = keyboard_check_pressed(ord(",")) || keyboard_check_pressed(vk_up);
				keyMenuDown = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_down);
				keyMenuLeft = keyboard_check_pressed(ord("O")) || keyboard_check_pressed(vk_left);
				keyMenuRight = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_right);
			break;
		}
		keyMenuAccept = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
		keyMenuBack = CheckGamepadButtonPressed(vk_backspace);
		keyPause = keyboard_check_pressed(vk_escape);
	break;
}