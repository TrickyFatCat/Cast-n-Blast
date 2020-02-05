// Inherit the parent event
event_inherited();

//State machine
switch currentState
{
	case DropableState.Drop:
		ProcessDrop;
	break;
	
	case DropableState.Activation:
		ProcessActivation;
	break;
	
	case DropableState.Idle:
		ProcessIdle;
	break;
}