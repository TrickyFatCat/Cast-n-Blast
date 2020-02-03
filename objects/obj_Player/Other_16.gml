/// @description PlayerHealthPointsReader

hitPoints = legsHitPoints + caseHitPoints + weaponHitPoints;

if hitPoints <= 0 && currentState < PlayerState.Transcendence
{
	currentState = PlayerState.Transcendence;
	SwitchSprite(spriteIdle);
}