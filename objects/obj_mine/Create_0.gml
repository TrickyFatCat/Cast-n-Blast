/// @description Parameters

// Inherit the parent event
event_inherited();

#macro ProcessDrop event_user(0);
#macro ProcessActivation event_user(1);
#macro ProcessIdle event_user(2);
#macro ProcessEffect event_user(3);
#macro ProcessDestruction event_user(4);

//States
enum MineState
{
	Drop,
	Activation,
	Idle,
	Destruction
}

currentState = MineState.Drop;

//Drop parameters
isBounced = false;
directionCurrent = random_range(0, 360);

//Life span time
lifespanTime = SetTime(10);
lifespanTimer = 0;

activationTime = SetTime(0.75);
activationTimer = 0;

destructionDelayTime = SetTime(0.15);
destructionDelayTimer = 0;

isInvulnerable = true;
drawColour = c_gray;
drawOutline = false;