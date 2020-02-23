/// @description CustomDrawSpriteHandler

// Parameters
var _y = y - offsetY - z;

var _deltaX = lengthdir_x(lasersightOffset, directionCurrent);
var _deltaY = lengthdir_y(lasersightOffset, directionCurrent);
var _laserSightX = x + _deltaX;
var _laserSightY = _y + _deltaY;

// Draw laser sight
if (laserSightEnabled)
{
	var _scaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	var _impactX = _laserSightX + lengthdir_x(_scaleX, drawAngle);
	var _impactY = _laserSightY + lengthdir_y(_scaleX, drawAngle);
	draw_sprite_ext(spr_1pix, image_index, _laserSightX, _laserSightY, _scaleX - _deltaX, 1, drawAngle, laserSightColour, lasersightAlpha);
	draw_sprite_ext(spr_laserImpact, image_index, _impactX, _impactY, 0.4, 0.4, random(360), laserSightColour, lasersightAlpha);
}


// Draw weapon
if ((visible) && weaponSprite != noone)
{
	switch (bulletObjectParent)
	{
		case obj_Projectile:
		case obj_Hitscan:
		case obj_Laser:
			var _recoilDeltaX = lengthdir_x(recoilPowerCurrent, directionCurrent);
			var _recoilDeltaY = lengthdir_y(recoilPowerCurrent, directionCurrent);

			draw_sprite_ext(weaponSprite, image_index, x - _recoilDeltaX, _y - _recoilDeltaY, drawScaleX, drawScaleY, drawAngle, image_blend, drawAlpha);
		break;
	}
}