/// @description Insert description here

// Inherit the parent event
event_inherited();

// User Events
#macro CheckEntityHP			event_user(0)
#macro PlaceEnemyWeapon			event_user(1)
#macro ExecuteStateIdle			event_user(2)
#macro ExecuteStateTargetSearch event_user(3)
#macro ExecuteStateMove			event_user(4)
#macro ExecuteStateAction		event_user(5)
#macro ExecuteStateTrancendence event_user(6)
#macro ExecuteStateDeath		event_user(7)
#macro StopMoving				event_user(8)
#macro ControlSprite			event_user(9)
#macro ControlWeapon			event_user(10)

SetShadowParameters(true, 1);

// Add path
path = path_add();
pathToTarget = noone;
pathSpeed = 0.0;
targetDirection = 0.0;
targetX = 0.0;
targetY = 0.0;

// Add weapon
mainWeapon = instance_create_layer(x, y, layer, obj_EnemyWeapon);
if (weaponId == noone)
{
	instance_destroy(mainWeapon);
	mainWeapon = noone;
}
else
{
	SetEnemyWeapon(weaponId, mainWeapon);
}
//mainWeapon.visible = false;

// Base states
enum EnemyState
{
	Spawn,
	Idle,
	TargetSearch,
	Move,
	Action,
	Trancendence,
	Death,
	Inactive
}

currentState = EnemyState.Spawn;

spawnProgress = 0;

idleTime = SetTime(0.4);
idleTimer = 0;

// Targets
enum TargetToSearch
{
	Self,
	Player
}

currentTarget = TargetToSearch.Player;

drawAlpha = 0;

waitTimer = 0;
cooldownTimer = 0;

moveSoundTimer = 0
previousScaleX = 1;

isShooting = false;
isWaiting = false;
waitTime = SetTime(waitingTime);
stayTimer = 0;
stayTime = SetTime(1);
isStaying = false;

SetEnemyData(enemyIndex);