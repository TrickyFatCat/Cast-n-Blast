// Inherit the parent event
event_inherited();

SetEnemyWeapon(EnemyWeapon.NinjaGun);

enum NinjaState
{
	Idle,
	TeleportOut,
	ChangePosition,
	TeleportIn,
	Activation,
	Attack,
	Deactivation
}

currentActionState = NinjaState.Idle;

teleportInTime = 0.2;
teleportInWaitTime = SetTime(1);
teleportInWaitTimer = 0;
teleportOutTime = 0.5;

activationTime = SetTime(1);
activationTimer = 0;

deactivationTime = SetTime(1);
deactivationTimer = 0;

shotNumber = 5;

mainWeapon.visible = false;

teleportScaleY = 2;
teleportScaleX = 1;

isInvulnerable = true;
drawColour = c_fuchsia;