// Inherit the parent event
event_inherited();

ControlWeapon;

if global.Player = noone && currentState > EnemyState.Spawn && hitPoints > 0
{
	currentState = EnemyState.Inactive;
	isShooting = false;
	sprite_index = spriteIdle;
}