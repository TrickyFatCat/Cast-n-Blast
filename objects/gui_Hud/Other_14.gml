event_inherited()

/// Parameters
var _speed = CalculateStep(0.25);

/// Sequence
switch hudCurrentState
{
	case HUDState.Active:
		if (sys_GameManager.keyPause)
		{
			hudCurrentState = HUDState.PauseIn;
		}
	break;
	
	case HUDState.PauseIn:
		SetGameState(GameState.Pause);
		
		menuIsActive = true;
		menuTargetX = guiMarginX;
		
		global.TimeFactor = Approach(global.TimeFactor, 0, _speed);
		
		menuBackGroundAlpha = lerp(0.75, 0, global.TimeFactor);
		logoAlpha = lerp(1, 0, global.TimeFactor);
		hudAlpha = lerp(0, 1, global.TimeFactor);
		
		if (global.TimeFactor == 0)
		{
			hudCurrentState = HUDState.Pause;
		}
	break;
	
	case HUDState.Pause:
		if (global.GameState == GameState.Pause)
		{
			CheckButtonActions;
	
			if (sys_GameManager.keyPause)
			{
				hudCurrentState = HUDState.PauseOut;
				audio_pause_all();
			}
		}
	break;
	
	case HUDState.PauseOut:
		menuTargetX = menuFoldedX;
	
		global.TimeFactor = Approach(global.TimeFactor, 1, _speed);
		
		menuBackGroundAlpha = lerp(0.75, 0, global.TimeFactor);
		logoAlpha = lerp(1, 0, global.TimeFactor);
		hudAlpha = lerp(0, 1, global.TimeFactor);
		
		if (global.TimeFactor == 1 && menuX < 150)
		{
			hudCurrentState = HUDState.Active;
			SetGameState(GameState.Active);
			audio_resume_all()
		}
	break;
}