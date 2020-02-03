/// @description CustomDrawSpriteHandler

// Parameters
var _y = y - offsetY - z;

// Draw laser sight
if (laserSightEnabled) && (visible)
{
	var _scaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	draw_sprite_ext(spr_1pix, image_index, bulletSpawnPointX, bulletSpawnPointY, _scaleX, 1, drawAngle, c_red, lasersightAlpha);
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