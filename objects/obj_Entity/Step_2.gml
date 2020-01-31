// Inherit the parent event
event_inherited();

// Place weapon
with (activeWeapon)
{
	x = owner.x + rotationOffsetX;
	y = owner.y + rotationOffsetY;
}