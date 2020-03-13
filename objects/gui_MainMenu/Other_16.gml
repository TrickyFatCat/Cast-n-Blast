/// @description MainMenuButtonActionsController

switch (menuCurrentAction)
{
	case MainMenuItem.Play:
		menuTargetX = menuFoldedX;
		
		if (menuX < menuFoldedX * 0.75)
		{
			currentState = InterfaceState.TransitionOut;
		}
	break;
	
	case MainMenuItem.Fullscreen:
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
	
	case MainMenuItem.Layout:
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
	
	case MainMenuItem.Quit:
		game_end();
	break;
}