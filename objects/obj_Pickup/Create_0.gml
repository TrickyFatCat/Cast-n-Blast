/// @description Parameters

// Inherit the parent event
event_inherited();

#macro MovePickup event_user(0)

//States
enum PickupState
{
	Drop,
	Idle,
	Pull,
	Destroy
}

SetShadowParameters(true, 1);

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
velocityZ = 4;