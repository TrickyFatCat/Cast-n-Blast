/// @description Insert description here
// You can write your code in this editor
/// @description FollowPointPeek

var _distanceMax =	190;
var _startPointX = cameraFollowTarget.x;
var _startPointY = cameraFollowTarget.y;
		
switch (global.CurrentInput)
{
	case InputMethod.KeyboardMouse:
		var _direction = point_direction(_startPointX, _startPointY, mouse_x, mouse_y);
		var _aimDistance = point_distance(_startPointX, _startPointY, mouse_x, mouse_y);
		var _distanceAlpha = min(_aimDistance / _distanceMax, 1);
	break;
		
	case InputMethod.Gamepad:
		var _axisH = gamepad_axis_value(global.ActiveGamepad, gp_axisrh);
		var _axisV = gamepad_axis_value(global.ActiveGamepad, gp_axisrv);
		var _direction = point_direction(0, 0, _axisH, _axisV);
		var _distanceAlpha = min(point_distance(0, 0, _axisH, _axisV), 1);
	break;
}
		
var _distance = lerp(0, _distanceMax, _distanceAlpha);
var _endPointX = _startPointX + lengthdir_x(_distance, _direction)
var _endPointY = _startPointY + lengthdir_y(_distance, _direction)
			
targetX = lerp(_startPointX, _endPointX, 0.2);
targetY = lerp(_startPointY, _endPointY, 0.2);
			
CalculateCameraDelayMovement();