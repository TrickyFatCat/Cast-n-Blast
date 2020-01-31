/// @param target

var _target = argument0;

// Bounce X
if (place_meeting(x + velocityX, y , _target))
{
	
	if (_target.isBounceable)
	{
		while (!place_meeting(x + sign(velocityX), y, _target))
		{
			x += sign(velocityX);
		}
		velocityX *= -1;
		isBounced = true;
	}
}
		
// Bounce Y
if (place_meeting(x, y + velocityY,_target))
{
	if (_target.isBounceable)
	{
		while (!place_meeting(x, y + sign(velocityY),_target))
		{
			y += sign(velocityY);
		}
		velocityY *= -1;
		isBounced = true;
	}
}