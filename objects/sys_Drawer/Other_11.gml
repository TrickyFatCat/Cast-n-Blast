/// @description DrawFloorEffectsController

if (surface_exists(surfaceFloorEffects))
{
	draw_surface_ext(surfaceFloorEffects, 0, 0, 1.0, 1.0, 0, c_white, 1.0);
}
else
{
	surfaceFloorEffects = surface_create(room_width, room_height);
}