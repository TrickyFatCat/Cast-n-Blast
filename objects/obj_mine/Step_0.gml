// Inherit the parent event
event_inherited();

//State machine
switch currentState
{
	case MineState.Drop:
		ProcessDrop;
	break;
	
	case MineState.Activation:
		ProcessActivation;
	break;
	
	case MineState.Idle:
		ProcessIdle;
	break;
	
	case MineState.Destruction:
		ProcessDestruction;
	break;
}