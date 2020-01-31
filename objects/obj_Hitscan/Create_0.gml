/// @description

// Inherit the parent event
event_inherited();

// User events
#macro ProcessHitscan event_user(0)

// States
enum HitscanState
{
	Idle,
	Active,
	Finish
}

currentState = HitscanState.Idle;

// Parameters
collisionTargets = 0;
endPointX = x;
endPointY = y;

// Damage parameters
damage = 0;
dealingDamage = false;