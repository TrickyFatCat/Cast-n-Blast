/// @description Insert description here

switch (menuCurrentAction)
{
	case PauseMenuItem.Return:
		hudCurrentState = HUDState.PauseOut;
		menuCurrentAction = noone;
	break;
	
	case PauseMenuItem.Fullscreen:
		var _isFullscreen = window_get_fullscreen();
		
		if (!_isFullscreen)
		{
			window_set_fullscreen(true);
			
			with (sys_DisplayManager)
			{
				resolutionZoom = resolutionZoomMax;
				UpdateResolution;
			}
		}
		else
		{
			window_set_fullscreen(false);
			with (sys_DisplayManager)
			{
				resolutionZoom = max(resolutionZoomMax - 1);
				UpdateResolution;
			}
		}
		
		menuCurrentAction = noone;
	break;
	
	case PauseMenuItem.Layout:
		switch (global.KeyboardLayout)
		{
			case KeyboardLayout.QWERTY:
				global.KeyboardLayout = KeyboardLayout.AZERTY;
			break;
		
			case KeyboardLayout.AZERTY:
				global.KeyboardLayout = KeyboardLayout.DVORAK;
			break;
		
			case KeyboardLayout.DVORAK:
				global.KeyboardLayout = KeyboardLayout.QWERTY;
			break;
		}
		
		menuCurrentAction = noone;
	break;
	
	case PauseMenuItem.Quit:
		game_end();
	break;
}