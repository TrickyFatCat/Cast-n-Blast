// Inherit the parent event
event_inherited();

#macro ExecuteActivation event_user(1);
#macro ExecuteIdle event_user(2);
#macro ExecuteDestruction event_user(3);

SetShadowParameters(true, 1);

//States
enum BombState
{
	Drop,
	Activation,
	Idle,
	Destruction
}

currentState = BombState.Drop;

//Drop parameters
isBounced = false;
dropDistance = CalculateDistanceToPlayer();
initialX = x;
initialY = y;
dropProgress = 0;

//Life span time
lifespanTime = SetTime(5);
lifespanTimer = 0;

activationTime = SetTime(0.5);
activationTimer = 0;

destructionDelayTime = SetTime(0.15);
destructionDelayTimer = 0;

isInvulnerable = true;
drawColour = c_gray;
drawOutline = false;

explosionRadius = 32;
velocityZ = 6;