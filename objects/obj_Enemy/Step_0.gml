// Inherit the parent event
event_inherited();

var _spawnTime = 0.5;

switch (currentState)
{
	case EnemyState.Spawn:
		isInvulnerable = true;
		collisionEnable = false;
		var _spawnStep = CalculateStep(_spawnTime);
		
		if (spawnProgress != 1)
		{
			spawnProgress = ApproachTimeFactor(spawnProgress, 1, _spawnStep);
			
			drawAlpha = LerpTimeFactor(0, 1, spawnProgress);
		}
		else
		{
			currentState = EnemyState.Action;
			isInvulnerable = false;
			collisionEnable = true;
		}
	break;
	
	case EnemyState.Idle:
		SwitchSprite(spriteIdle);
		ExecuteStateIdle;
		CheckEntityHP;
		ControlSprite;
	break;
	
	case EnemyState.TargetSearch:
		SwitchSprite(spriteIdle);
		ExecuteStateTargetSearch;
		CheckEntityHP;
		ControlSprite;
	break;
	
	case EnemyState.Move:
		SwitchSprite(spriteWalk);
		ExecuteStateMove;
		isShooting = false;
		CheckEntityHP;
		ControlSprite;
		moveSoundTimer += global.TimeFactor;
		
		var _stepTime = SetTime(0.25);
		
		var _timeIsOver = CheckTimer(moveSoundTimer, _stepTime)
		
		if (_timeIsOver)
		{
			moveSoundTimer = 0;
			
			//PlaySoundAt(sfx_step, 128, false);
		}
	break;
	
	case EnemyState.Action:
		SwitchSprite(spriteIdle);
		ExecuteStateAction;
		CheckEntityHP;
	break;
	
	case EnemyState.Trancendence:
		SwitchSprite(spriteIdle);
		ExecuteStateTrancendence;
	break;
	
	case EnemyState.Death:
		ExecuteStateDeath;
	break;
	
	case EnemyState.Inactive:
		CheckEntityHP;
	break;
}