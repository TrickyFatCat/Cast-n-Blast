/// @description Parameters

// Inherit the parent event
event_inherited();

#macro ProcessDrop event_user(0);
#macro ProcessActivation event_user(1);
#macro ProcessIdle event_user(2);
#macro ProcessEffect event_user(3);

//States
enum DropableState
{
	Drop,
	Activation,
	Idle,
	Destroy
}

currentState = DropableState.Drop;

//Drop parameters
dropSpeed = 0.01;
isBounced = false;
directionCurrent = random_range(0, 360);

//Life span time
lifespanTime = SetTime(10);
lifespanTimer = 0;

activationTime = SetTime(0.75);
activationTimer = 0;