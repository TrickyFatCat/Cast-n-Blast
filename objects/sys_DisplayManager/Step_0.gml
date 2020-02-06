/// @description ResolutionDebugController

if (keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(global.ActiveGamepad, gp_stickl))
{
	resolutionZoom++;
	if (resolutionZoom > resolutionZoomMax)
	{
		resolutionZoom = 1;
	}
	
	UpdateResolution;
}

//if (keyboard_check_pressed(vk_enter))
//{
//	if (!window_get_fullscreen())
//	{
//		window_set_fullscreen(true);
//		resolutionZoom = resolutionZoomMax;
//		UpdateResolution;
//	}
//	else
//	{
//		window_set_fullscreen(false);
//		resolutionZoom = ceil(resolutionZoomMax / 2);
//		UpdateResolution;
//	}
//}