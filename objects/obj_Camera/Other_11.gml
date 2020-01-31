/// @description FollowBorder
		
switch (global.CurrentInput)
{
	case InputMethod.KeyboardMouse:
		var _borderStartMargin = 0.35;
		var _borderEndMargin = 1 - _borderStartMargin;
		
		var _borderStartX = cameraX + (cameraWidth * _borderStartMargin);
		var _borderStartY = cameraY + (cameraHeight * _borderStartMargin);
		
		var _borderEndX = cameraX + (cameraWidth * _borderEndMargin);
		var _borderEndY = cameraY + (cameraHeight * _borderEndMargin);
		
		var _isInsideBorder = point_in_rectangle(mouse_x, mouse_y, _borderStartX, _borderStartY, _borderEndX, _borderEndY);
		
		if (!_isInsideBorder)
		{
			var _lerpAlpha = 0.01;
			
			cameraX = lerp(cameraX, mouse_x - cameraOriginX, _lerpAlpha);
			cameraY = lerp(cameraY, mouse_y - cameraOriginY, _lerpAlpha);
		}
		else
		{
			ExecuteMoveWithKeyboard;
		}
	break;
	
	case InputMethod.Gamepad:
		ExecuteMoveWithGamepad;
	break;
}