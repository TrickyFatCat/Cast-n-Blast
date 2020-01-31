/// @description PlayerMenuControls

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		keyMenuUp = CheckGamepadButtonPressed(gp_axislv) < 0 || CheckGamepadButtonPressed(gp_padu);
		keyMenuDown = CheckGamepadButtonPressed(gp_axislv) > 0 || CheckGamepadButtonPressed(gp_padd);
		keyMenuLeft = CheckGamepadButtonPressed(gp_axislh) < 0 || CheckGamepadButtonPressed(gp_padl);
		keyMenuRight = CheckGamepadButtonPressed(gp_axislh) > 0 || CheckGamepadButtonPressed(gp_padr);
		keyMenuAccept = CheckGamepadButtonPressed(gp_face1);
		keyMenuBack = CheckGamepadButtonPressed(gp_face2);
		keyPause = CheckGamepadButtonPressed(gp_start);
	break;
	
	case InputMethod.KeyboardMouse:
		keyMenuUp = keyboard_check_pressed(ord("W"));
		keyMenuDown = keyboard_check_pressed(ord("S"));
		keyMenuLeft = keyboard_check_pressed(ord("A"));
		keyMenuRight = keyboard_check_pressed(ord("D"));
		keyMenuAccept = keyboard_check_pressed(vk_enter);
		keyMenuBack = CheckGamepadButtonPressed(vk_backspace);
		keyPause = keyboard_check_pressed(vk_escape);
	break;
}