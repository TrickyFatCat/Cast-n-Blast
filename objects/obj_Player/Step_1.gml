// Inherit the parent event
event_inherited();

if (GameIsPaused())
{
	return;
}

CheckPlayerHP;

if (global.CurrentInput == InputMethod.Gamepad)
{
	mainWeapon.laserSightEnabled = true;
	mainWeapon.lasersightAlpha = drawAlpha;
}
else
{
	mainWeapon.laserSightEnabled = false;
}

ProcessDashRecovery;

if (currentState == PlayerState.Idle || currentState == PlayerState.Run || currentState == PlayerState.Dash)
{
	ProcessWeaponChange;
}

ProcessAmmoRecovery;