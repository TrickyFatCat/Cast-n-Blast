// Inherit the parent event
event_inherited();

// Place weapon
if (mainWeapon != noone)
{
	with (mainWeapon)
	{
		x = owner.x + rotationOffsetX;
		y = owner.y + rotationOffsetY;
	}
}