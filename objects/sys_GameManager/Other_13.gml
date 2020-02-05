/// @description CheckKeyPause

/// @description PlayerMenuControls

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		keyPause = CheckGamepadButtonPressed(gp_start);
	break;
	
	case InputMethod.KeyboardMouse:
		keyPause = keyboard_check_pressed(vk_escape);
	break;
}