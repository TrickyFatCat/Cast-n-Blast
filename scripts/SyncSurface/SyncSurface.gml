/// @param surface

var _surface = argument0;

if (surface_exists(_surface))
{
	var _surfaceWidth = surface_get_width(_surface);
	var _surfaceHeight = surface_get_height(_surface);
	var _appSurfaceWidth = surface_get_width(application_surface);
	var _appSurfaceHeight = surface_get_height(application_surface);
	if (_surfaceWidth != _appSurfaceWidth && _surfaceHeight != _appSurfaceHeight)
	{
		surface_resize(_surface, global.CurrentWidth, global.CurrentHeight);
	}
}
else
{
	surfaceShadows = surface_create(global.CurrentWidth, global.CurrentHeight);
}