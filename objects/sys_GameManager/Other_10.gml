/// @description PlayerControlsOverseer

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		var _gamepadButton = gp_shoulderrb;
		
		keyShootAuto = gamepad_button_check(global.ActiveGamepad, _gamepadButton);
		keyShootSemiAuto = gamepad_button_check_pressed(global.ActiveGamepad, _gamepadButton)
		
	break;
	
	case InputMethod.KeyboardMouse:
		var _mouseButton = mb_left;
		
		keyMoveUp = keyboard_check(ord("W"));
		keyMoveLeft = keyboard_check(ord("A"));
		keyMoveDown = keyboard_check(ord("S"));
		keyMoveRight = keyboard_check(ord("D"));
		keyShootAuto = mouse_check_button(_mouseButton);
		keyShootSemiAuto = mouse_check_button_pressed(_mouseButton);
	break;
}