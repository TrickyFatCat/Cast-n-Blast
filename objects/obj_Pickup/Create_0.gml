/// @description Parameters

// Inherit the parent event
event_inherited();

//States
enum PickupState
{
	Drop,
	Idle,
	Pull,
	Destroy
}

SetShadowParameters(true,0.5);

currentState = PickupState.Drop;

//Drop parameters
dropSpeed = 0.01;
isBounced = false;
directionCurrent = random_range(0, 360);

//Pulling parameters
isPullable = true;
pullVelocityCurrent = 0;

//Life span time
lifespanTime = SetTime(7);
lifespanTimer = 0;