// Inherit the parent event
event_inherited();

var _spawnTime = 1.5;

switch (currentState)
{
	case EnemyState.Spawn:
		isInvulnerable = true;
		collisionEnable = false;

		//ExecuteDissolveIn(_spawnTime);
	
		//with (activeWeapon)
		//{
		//	ExecuteDissolveIn(_spawnTime);
		//}
	
		//if (dissolvePower == 1)
		//{
		//	currentState = EnemyState.Idle;
		//}
		drawAlpha = 1;
		
		currentState = EnemyState.Idle;
	break;
	
	case EnemyState.Idle:
		collisionEnable = true;
		SwitchSprite(spriteIdle);
		ExecuteStateIdle;
		CheckEntityHP;
	break;
	
	case EnemyState.TargetSearch:
		SwitchSprite(spriteIdle);
		ExecuteStateTargetSearch;
		CheckEntityHP;
	break;
	
	case EnemyState.Move:
		SwitchSprite(spriteWalk);
		ExecuteStateMove;
		isShooting = false;
		CheckEntityHP;
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