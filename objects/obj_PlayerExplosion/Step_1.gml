
// Inherit the parent event
event_inherited();


if (startDelay)
{
	var _delayTime = SetTime(0.5);
	
	delayTimer += global.TimeFactor;
	
	var _timeIsOver = CheckTimer(delayTimer, _delayTime);
	
	if (_timeIsOver)
	{
		global.BattleState = BattleState.End;
	}
}

if visible
{
	if global.Camera.cameraShakeValue <= 0.25
	{
		ApplyShakeToCamera(false, 2);
	}

	if (!dealingDamage)
	{
		dealingDamage = true;
	}	
}