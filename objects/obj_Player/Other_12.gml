/// @description SpriteController

if (global.TimeFactor > 0)
{
	//Switch sprite
	switch currentState
	{
		case PlayerState.Idle:
			SwitchSprite(spriteIdle);
		break;
	
		case PlayerState.Run:
			SwitchSprite(spriteWalk);
		break;
	}

	//Flip sprite
	if (directionX < 0)
	{
		drawScaleX = -1;
	}
	else if (directionX > 0)
	{
		drawScaleX = 1;
	}
}