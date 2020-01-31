/// @description Check collision with a referenced object

// @param object

var _object = argument0;

// Collision X
if (place_meeting(x + velocityX, y, _object))
{
	while (!place_meeting(x + sign(velocityX), y, _object))
		{
			x += sign(velocityX);
		}
	velocityX = 0;
}

// Collision Y
if (place_meeting(x, y + velocityY, _object))
{
	while (!place_meeting(x, y + sign(velocityY), _object))
		{
			y += sign(velocityY);
		}
	velocityY = 0;
}