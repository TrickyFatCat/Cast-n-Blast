// Inherit the parent event
event_inherited();

var _spawnTime = 1.5;

switch (currentState)
{
	case EntityState.Spawn:
		isInvulnerable = true;
		collisionEnable = false;

		//ExecuteDissolveIn(_spawnTime);
	
		//with (activeWeapon)
		//{
		//	ExecuteDissolveIn(_spawnTime);
		//}
	
		//if (dissolvePower == 1)
		//{
		//	currentState = EntityState.Idle;
		//}
		
		currentState = EntityState.Idle;
	break;
	
	case EntityState.Idle:
		collisionEnable = true;
		SwitchSprite(spriteIdle);
		ExecuteStateIdle;
		CheckEntityHP;
	break;
	
	case EntityState.TargetSearch:
		SwitchSprite(spriteIdle);
		ExecuteStateTargetSearch;
		CheckEntityHP;
	break;
	
	case EntityState.Move:
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
	
	case EntityState.Action:
		SwitchSprite(spriteIdle);
		ExecuteStateAction;
		CheckEntityHP;
	break;
	
	case EntityState.Trancendence:
		SwitchSprite(spriteIdle);
		ExecuteStateTrancendence;
	break;
	
	case EntityState.Death:
		ExecuteStateDeath;
	break;
	
	case EntityState.Inactive:
		CheckEntityHP;
	break;
}