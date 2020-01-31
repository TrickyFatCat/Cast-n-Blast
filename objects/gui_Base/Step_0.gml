/// @description MainTransitionSequence

switch currentState
{
	case InterfaceState.TransitionIn:
		SetGameState(GameState.Transition);
		ExecuteTransitionInSequence;	
	break;
	
	case InterfaceState.GUI:
		transitionInTimer = 0;
		ExecuteGUIStateLogic;
	break;
	
	case InterfaceState.TransitionOut:
		transitionInTimer = 0;
		SetGameState(GameState.Transition);
		ExecuteTransitionOutSequence;
	break;
}