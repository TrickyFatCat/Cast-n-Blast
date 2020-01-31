/// @description MoveWithGamepad

var _axisH = gamepad_axis_value(global.ActiveGamepad, gp_axisrh);
var _axisV = gamepad_axis_value(global.ActiveGamepad, gp_axisrv);
		
var _direction = point_direction(0, 0, _axisH, _axisV);
var _lerpAlpha = min(point_distance(0, 0, _axisH, _axisV), 1);
var _speed = lerp(0, cameraButtonMoveSpeed, _lerpAlpha);
		
cameraX += lengthdir_x(_speed, _direction);
cameraY += lengthdir_y(_speed, _direction);