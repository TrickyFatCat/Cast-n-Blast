/// @description Parameters

// Inherit the parent event
event_inherited();

//User events
#macro DropSequence event_user(0)
#macro IdleSequence event_user(1)
#macro PullSequence event_user(2)

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