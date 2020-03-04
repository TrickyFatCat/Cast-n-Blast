// Inherit the parent event
event_inherited();

ControlWeapon;

if global.Player.currentState == PlayerState.Death && currentState > EnemyState.Spawn && hitPoints > 0
{
	currentState = EnemyState.Inactive;
	isShooting = false;
	sprite_index = spriteIdle;
}

if (isWaiting)
{
	waitTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(waitTimer, waitTime);
	
	if (_timeIsOver)
	{
		waitTimer = 0;
		mainWeapon.shotCount = 0;
		isWaiting = false;
	}
}
else if (isShooting == false && waitTime > 0)
{
	isShooting = true;
	previousScaleX = sign(drawScaleX);
}