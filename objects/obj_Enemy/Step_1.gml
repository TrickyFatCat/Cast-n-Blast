// Inherit the parent event
event_inherited();

activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);

activeWeapon.isShooting = isShooting;

if global.Player = noone && currentState > EnemyState.Spawn && hitPoints > 0
{
	currentState = EnemyState.Inactive;
	isShooting = false;
	sprite_index = spriteIdle;
}