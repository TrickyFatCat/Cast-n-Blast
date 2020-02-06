/// @description PlayerHealthPointsReader

hitPoints = legsHitPoints + caseHitPoints + weaponHitPoints;

if (hitPoints <= 0)
{
	currentState = PlayerState.Transcendence;
	SwitchSprite(spriteIdle);
}