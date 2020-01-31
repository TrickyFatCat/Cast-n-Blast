/// @description Insert description here

// Inherit the parent event
event_inherited();

//User events
#macro ExecuteStartSequence event_user(0)
#macro ExecuteEndSequence event_user(1)

//General parameters
enum LaserState
{
	Idle,
	Start,
	Active,
	Finish
}

currentState = LaserState.Idle;

// Scale parameters
collisionTargets = SetHitscanTargets(obj_obstacle, obj_enemy);
drawScaleX = 0;
drawScaleY = 0;
drawScaleYMax = 0;
endPointX = x;
endPointY = y;

//Damage parameters
damage = 0;
dealingDamage = false;