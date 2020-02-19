if visible
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, drawColour, drawAlpha);
	gpu_set_blendmode(bm_normal);
	draw_sprite_ext(spr_magicProjectile_core, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, c_white, drawAlpha);
}