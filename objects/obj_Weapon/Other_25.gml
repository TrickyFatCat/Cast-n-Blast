/// @description CustomDrawSpriteHandler

// Parameters
var _y = y - offsetY - z;

var _laserSightOffset = 5;
var _deltaX = lengthdir_x(_laserSightOffset, directionCurrent);
var _deltaY = lengthdir_y(_laserSightOffset, directionCurrent);
var _laserSightX = x + _deltaX;
var _laserSightY = y - z - offsetY + _deltaY;

// Draw laser sight
if (laserSightEnabled) && (visible)
{
	var _scaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	draw_sprite_ext(spr_1pix, image_index, _laserSightX, _laserSightY, _scaleX - _laserSightOffset, 1, drawAngle, c_red, lasersightAlpha);
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