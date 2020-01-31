/// @description MoveWithKeyboard

var _directionX = sys_GameManager.keyMoveRight - sys_GameManager.keyMoveLeft;
var _directionY = sys_GameManager.keyMoveDown - sys_GameManager.keyMoveUp;

if (_directionX != 0 || _directionY != 0)
{
	var _direction = point_direction(0, 0, _directionX, _directionY);
	
	var _speedX = lengthdir_x(cameraButtonMoveSpeed, _direction);
	var _speedY = lengthdir_y(cameraButtonMoveSpeed, _direction);

	cameraX += _speedX;
	cameraY += _speedY;
}