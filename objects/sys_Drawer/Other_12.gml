/// @description DrawShadowHandler

if (surface_exists(surfaceShadows)) {
	surface_set_target(surfaceShadows)
	
	draw_clear_alpha(c_black, 0.0)
	
	var _surfaceX = 0;
	var _surfaceY = 0;
	
	//with (obj_Camera)
	//{
	//	_surfaceX = playerX - cameraOriginX;
	//	_surfaceY = playerY - cameraOriginY;
	//}
	
	with obj_Base
	{
		if shadowEnabled
		{
			draw_sprite_ext(spr_circle, image_index, x - _surfaceX, y - _surfaceY, shadowScaleX, shadowScaleY, 0, c_black, shadowAlpha);
		}
	}
	
	surface_reset_target();
	
	draw_surface_ext(surfaceShadows, _surfaceX, _surfaceY, 1, 1, 0, c_white, 0.55);
}
else
{
	surfaceShadows = surface_create(surfaceShadowsWidth, surfaceShadowsHeight);
}