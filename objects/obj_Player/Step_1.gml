// Inherit the parent event
event_inherited();

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
ProcessShieldLogic;