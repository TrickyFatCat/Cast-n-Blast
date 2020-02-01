// Inherit the parent event
event_inherited();

// Place weapon
if (activeWeapon != noone)
{
	with (activeWeapon)
	{
		x = owner.x + rotationOffsetX;
		y = owner.y + rotationOffsetY;
	}
}