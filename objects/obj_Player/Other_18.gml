/// @description ProcessSpawn

isInvulnerable = true;
collisionEnable = false;
var _spawnStep = CalculateStep(spawnTime);
		
if (spawnProgress != 1)
{
	spawnProgress = ApproachTimeFactor(spawnProgress, 1, _spawnStep);
	drawAlpha = LerpTimeFactor(0, 1, spawnProgress);
	shadowAlpha = drawAlpha;
	activeWeapon.drawAlpha = LerpTimeFactor(0, 1, spawnProgress);
}
else
{
	currentState = PlayerState.Idle;
	global.BattleState = BattleState.Start;
	isInvulnerable = false;
	collisionEnable = true;
}

