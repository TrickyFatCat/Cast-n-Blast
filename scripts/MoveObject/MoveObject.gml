// @param isConstant

var _isConstant = argument0;

if (_isConstant)
{
	x += velocityX * global.TimeFactor;
	y += velocityY * global.TimeFactor;
}
else
{
	x += velocityX;
	y += velocityY;
}