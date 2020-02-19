event_inherited();

if (mainWeapon.currentCastState == CastState.Process)
{
	var _scaleX = LerpTimeFactor(0, 1, mainWeapon.castProgress);
	var _scaleY = _scaleX;
	draw_sprite_ext(spr_magicProjectileS_base, 0, mainWeapon.bulletSpawnPointX, mainWeapon.bulletSpawnPointY, _scaleX, _scaleY, 0, c_red, drawAlpha);
	draw_sprite_ext(spr_magicProjectileS_core, 0, mainWeapon.bulletSpawnPointX, mainWeapon.bulletSpawnPointY, _scaleX, _scaleY, 0, c_white, drawAlpha);
}