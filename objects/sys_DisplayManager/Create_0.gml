/// @description ResolutionInitializer

// User events
#macro UpdateResolution event_user(0);

// Parameters
global.IdealWidth = 480;
global.IdealHeight = 0;
resolutionZoom = 1;
resolutionZoomMax = 1;
interfaceZoom = 2;

// Sequence
aspectRatio = display_get_width() / display_get_height();

//global.IdealWidth = round(global.IdealHeight * aspectRatio);
global.IdealHeight =round(global.IdealWidth/aspectRatio);
global.IdealWidth = round(global.IdealWidth);
global.IdealHeight = round(global.IdealHeight);

if (display_get_width() mod global.IdealWidth != 0)
{
	var d = round(display_get_width() / global.IdealWidth);
	global.IdealWidth = display_get_width() / d;
}

if (display_get_height() mod global.IdealHeight != 0)
{
	var d = round(display_get_height() / global.IdealHeight);
	global.IdealHeight = display_get_height() / d;
}

// Check for odd numbers
if (global.IdealWidth & 1)
{
	global.IdealWidth++;
}
if (global.IdealHeight & 1)
{
	global.IdealHeight++;
}

//resolutionZoomMax = floor(display_get_width() / global.IdealWidth);
resolutionZoomMax = floor(display_get_height() / global.IdealHeight);

//Setup all the view ports so I don't have to.
globalvar PlayerCamera;
PlayerCamera = camera_create_view(0, 0, global.IdealWidth, global.IdealHeight, 0, noone, 0, 0, 0, 0);
camera_set_view_size(PlayerCamera, global.IdealWidth, global.IdealHeight);

for (var i = 1; i <= room_last; i++)
{
	if (room_exists(i))
	{
		room_set_view_enabled(i, true);
		room_set_viewport(i, 0, true, 0, 0, global.IdealWidth, global.IdealHeight);
		room_set_camera(i, 0, PlayerCamera);
	}
}

resolutionZoom = max(resolutionZoomMax - 1, 1);

UpdateResolution;