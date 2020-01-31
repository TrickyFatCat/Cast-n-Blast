event_inherited();

// Check root paretn of bullets
if (bulletObjectParent == noone)
{
	bulletObjectParent = GetBulletRootParent();
}

// Rotate weapon
rotationOffsetX = lengthdir_x(rotationOffset, directionCurrent);
rotationOffsetY = lengthdir_y(rotationOffset, directionCurrent);

// Flip weapon sprite
if (directionCurrent > 90 && directionCurrent < 270)
{
	drawScaleY = -1;
}
else
{
	drawScaleY = 1;
}

// Set draw angle
drawAngle = directionCurrent;