var _x = targetX - cameraOriginX;
var _y = targetY - cameraOriginY;

if (isSmooth)
{
	var _followSpeed = 0.08;

	cameraX = lerp(cameraX, _x, _followSpeed);
	cameraY = lerp(cameraY, _y, _followSpeed);
}
else
{
	cameraX = _x;
	cameraY = _y;
}