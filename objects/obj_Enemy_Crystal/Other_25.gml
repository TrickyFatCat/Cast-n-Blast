event_inherited();

if (mainWeapon.currentCastState == CastState.Process)
{
	var _startScale = mainWeapon.hitscanScaleY * 0.14;
	var _startCoreScale = mainWeapon.hitscanScaleY * 0.05;
	var _x = mainWeapon.bulletSpawnPointX;
	var _y = mainWeapon.bulletSpawnPointY;
	var _scaleY = LerpTimeFactor(0, _startScale, mainWeapon.castProgress);
	var _scaleX = _scaleY;
	draw_sprite_ext(spr_circle, 0, _x, _y, _scaleX, _scaleY, 0, c_red, 1);
	for (var i = 0; i < 3; i++)
	{
		_x = secondaryWeapon[i].bulletSpawnPointX;
		_y = secondaryWeapon[i].bulletSpawnPointY;
		draw_sprite_ext(spr_circle, 0, _x, _y, _scaleX, _scaleY, 0, c_red, 1);
	}
	
	var _x = mainWeapon.bulletSpawnPointX;
	var _y = mainWeapon.bulletSpawnPointY;
	var _scaleY = LerpTimeFactor(0, _startCoreScale, mainWeapon.castProgress);
	var _scaleX = _scaleY;
	
	draw_sprite_ext(spr_circle, 0, _x, _y, _scaleX, _scaleY, 0, c_white, 1);
	for (var i = 0; i < 3; i++)
	{
		_x = secondaryWeapon[i].bulletSpawnPointX;
		_y = secondaryWeapon[i].bulletSpawnPointY;
		draw_sprite_ext(spr_circle, 0, _x, _y, _scaleX, _scaleY, 0, c_white, 1);
	}
}
