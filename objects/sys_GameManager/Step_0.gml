/// @description Insert description here

switch (global.GameState)
{
	case GameState.Transition:
		ResetControls;
	break;
	
	case GameState.Active:
		CheckPlayerControls;
		if (object_exists(gui_MainMenu) || object_exists(gui_FinishMenu))
		{
			CheckMenuControls;
		}
		else
		{
			CheckKeyPause;
		}
	break;
	
	case GameState.Paused:
		CheckMenuControls;
	break;
}