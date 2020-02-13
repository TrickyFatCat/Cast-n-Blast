/// @description CustomDrawSpriteHandler

// Parameters
var _y = y - offsetY - z;

var _laserSightOffset = 5;
var _deltaX = lengthdir_x(_laserSightOffset, directionCurrent);
var _deltaY = lengthdir_y(_laserSightOffset, directionCurrent);
var _laserSightX = x + _deltaX;
var _laserSightY = y - z - offsetY + _deltaY;

// Draw laser sight
if (laserSightEnabled)
{
	var _scaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	var _impactX = _laserSightX + lengthdir_x(_scaleX, drawAngle);
	var _impactY = _laserSightY + lengthdir_y(_scaleX, drawAngle);
	draw_sprite_ext(spr_1pix, image_index, _laserSightX, _laserSightY, _scaleX - _laserSightOffset, 1, drawAngle, laserSightColour, lasersightAlpha);
	draw_sprite_ext(spr_laserImpact, image_index, _impactX, _impactY, 0.1, 0.1, drawAngle, laserSightColour, lasersightAlpha);
}


// Draw weapon
if ((visible) && weaponSprite != noone)
{
	switch (bulletObjectParent)
	{
		case obj_Projectile:
			var _recoilDeltaX = lengthdir_x(recoilPowerCurrent, directionCurrent);
			var _recoilDeltaY = lengthdir_y(recoilPowerCurrent, directionCurrent);

			draw_sprite_ext(weaponSprite, image_index, x - _recoilDeltaX, _y - _recoilDeltaY, drawScaleX, drawScaleY, drawAngle, image_blend, drawAlpha);
		break;
	
		case obj_Hitscan:
		break;
	
		case obj_Laser:
		break;
	}
}