/// @description FollowDrag

switch (global.CurrentInput)
{
	case InputMethod.KeyboardMouse:
		var _mouseClick = mouse_check_button(mb_right);
		
		var _mouseX = display_mouse_get_x();
		var _mouseY = display_mouse_get_y();
		
		if (_mouseClick)
		{
			cameraX += (mousePreviousX - _mouseX) * cameraDragSpeed;
			cameraY += (mousePreviousY - _mouseY) * cameraDragSpeed;
		}
		else
		{
			ExecuteMoveWithKeyboard;
		}
		
		mousePreviousX = _mouseX;
		mousePreviousY = _mouseY;
	break;
	
	case InputMethod.Gamepad:
		ExecuteMoveWithGamepad;
	break;
}