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

currentState = PickupState.Idle;

//Drop parameters
dropSpeed = 0.01;

//Pulling parameters
isPullable = true;
pullVelocityCurrent = 0;

//Life span time
lifespanTime = SetTime(7);
lifespanTimer = 0;