// Inherit the parent event
event_inherited();

if (currentShootMode = ShootMode.Charge)
{
	var _scaleX = LerpTimeFactor(0, 1, chargeProgress);
	var _scaleY = _scaleX;
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_magicProjectile, image_index, bulletSpawnPointX, bulletSpawnPointY, _scaleX, _scaleY, drawAngle, c_fuchsia, drawAlpha);
	gpu_set_blendmode(bm_normal);
	draw_sprite_ext(spr_magicProjectile_core, image_index, bulletSpawnPointX, bulletSpawnPointY, _scaleX, _scaleY, drawAngle, c_white, drawAlpha);
}