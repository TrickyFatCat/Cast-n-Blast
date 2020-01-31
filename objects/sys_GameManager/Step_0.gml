/// @description Insert description here

switch (global.GameState)
{
	case GameState.Transition:
		ResetControls;
	break;
	
	case GameState.Active:
		CheckPlayerControls;
		CheckMenuControls;
	break;
	
	case GameState.Paused:
		CheckMenuControls;
	break;
}