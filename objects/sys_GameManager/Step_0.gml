/// @description Insert description here

switch (global.GameState)
{
	case GameState.Transition:
		ResetControls;
	break;
	
	case GameState.Active:
		CheckPlayerControls;
		if (instance_exists(gui_MainMenu) || instance_exists(gui_FinishMenu))
		{
			CheckMenuControls;
		}
		else
		{
			CheckKeyPause;
		}
	break;
	
	case GameState.Pause:
		CheckMenuControls;
	break;
}