/// @description Insert description here
var _directionToPlayer = point_direction(x, y, playerX, playerY);
if (_directionToPlayer > 90)
{
	drawScaleX = -1;
}
else if (_directionToPlayer < 270)
{
	drawScaleX = 1;
}