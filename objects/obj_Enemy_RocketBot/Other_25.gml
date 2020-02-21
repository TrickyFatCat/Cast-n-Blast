if (mainWeapon.currentCastState == CastState.Process)
{
	var _offsetValue = LerpTimeFactor(0, mainWeapon.bulletSpawnPointOffset, mainWeapon.castProgress);
	var _scale = LerpTimeFactor(0, 1, mainWeapon.castProgress);
	var _alpha = _scale;
	var _offsetX = lengthdir_x(_offsetValue, mainWeapon.directionCurrent);
	var _offsetY = lengthdir_y(_offsetValue, mainWeapon.directionCurrent);
	draw_sprite_ext(spr_rocket, 0, x + _offsetX, y + _offsetY, _scale, _scale, 0, c_white, _alpha);
	var _offsetX = lengthdir_x(_offsetValue, secondaryWeapon.directionCurrent);
	var _offsetY = lengthdir_y(_offsetValue, secondaryWeapon.directionCurrent);
	draw_sprite_ext(spr_rocket, 0, x + _offsetX, y + _offsetY, _scale, _scale, 0, c_white, _alpha);
}

DrawRegularSprite();