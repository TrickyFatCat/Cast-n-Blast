/// @description DrawTransitonScreen

switch currentState
{
	case InterfaceState.TransitionIn:
		DrawTransitionScreen;
	break;
	
	case InterfaceState.GUI:
		DrawMenuBackground;
		DrawInterface;
	break;
	
	case InterfaceState.TransitionOut:
		DrawTransitionScreen;
	break;
}