/// @description PlayerMenuControls

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		keyMenuUp = GamepadButtonPressed(gp_axislv) < 0 || GamepadButtonPressed(gp_padu);
		keyMenuDown = GamepadButtonPressed(gp_axislv) > 0 || GamepadButtonPressed(gp_padd);
		keyMenuLeft = GamepadButtonPressed(gp_axislh) < 0 || GamepadButtonPressed(gp_padl);
		keyMenuRight = GamepadButtonPressed(gp_axislh) > 0 || GamepadButtonPressed(gp_padr);
		keyMenuAccept = GamepadButtonPressed(gp_face1);
		keyMenuBack = GamepadButtonPressed(gp_face2);
		keyPause = GamepadButtonPressed(gp_start);
	break;
	
	case InputMethod.KeyboardMouse:
		keyMenuUp = keyboard_check_pressed(ord("W"));
		keyMenuDown = keyboard_check_pressed(ord("S"));
		keyMenuLeft = keyboard_check_pressed(ord("A"));
		keyMenuRight = keyboard_check_pressed(ord("D"));
		keyMenuAccept = keyboard_check_pressed(vk_enter);
		keyMenuBack = GamepadButtonPressed(vk_backspace);
		keyPause = keyboard_check_pressed(vk_escape);
	break;
}