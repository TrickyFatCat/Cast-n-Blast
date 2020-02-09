/// @description DrawShadowHandler

if (surface_exists(surfaceShadows)) {
	surface_set_target(surfaceShadows)
	
	draw_clear_alpha(c_black, 0.0)
	
	with obj_Base
	{
		if shadowEnabled
		{
			draw_sprite_ext(spr_circle, image_index, x, y, shadowScaleX, shadowScaleY, 0, c_black, shadowAlpha);
		}
	}
	
	surface_reset_target();
	
	draw_surface_ext(surfaceShadows, 0, 0, 1, 1, 0, c_white, 0.55);
}
else
{
	surfaceShadows = surface_create(room_width, room_height);
}