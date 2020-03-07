/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

///// @decription Draw effect on floor surface

var _surface = sys_Drawer.surfaceFloorEffects;

if (surface_exists(_surface))
{
	surface_set_target(_surface);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, drawAngle, c_gray, image_alpha);
	
	surface_reset_target();
}
else
{
	_surface = surface_create(room_width, room_height);
}