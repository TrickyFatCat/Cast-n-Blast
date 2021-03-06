/// @description AddidtionalMechanicsSequence

//Inherit the parent event
event_inherited();

if (GameIsPaused())
{
	return;
}

switch (currentState)
{	
	case PlayerState.Inactive:
		if (global.GameState == GameState.Active)
		{
			currentState = PlayerState.Spawn;
		}
	break;
	
	case PlayerState.Spawn:
		ProcessSpawn;
	break;
	
	case PlayerState.Idle:
		RespondToControls;
		MovePlayer;
		ChangeSprite;
		RotateWeapon;
		ShootWeapon;
		PullPickups;
		ProcessUltimate;
	break;
	
	case PlayerState.Run:
		RespondToControls;
		MovePlayer;
		ChangeSprite;
		RotateWeapon;
		ShootWeapon;
		PullPickups;
		ProcessUltimate;
		moveSoundTimer += global.TimeFactor;
		
		var _stepTime = SetTime(0.25);
		
		var _timeIsOver = CheckTimer(moveSoundTimer, _stepTime)
		
		if (_timeIsOver)
		{
			moveSoundTimer = 0;
			PlaySound(sfx_playerStep);
		}
	break;
	
	case PlayerState.Dash:
		ActivateDash();
		MovePlayer;
		PullPickups;
		ProcessUltimate;
	break;
	
	case PlayerState.Transcendence:
		ExecutePlayerDeath;
	break;
	
	case PlayerState.Death:
		StopPlayingSound(sfx_deathTimer);
	break;
}

CheckCollision(obj_Obstacle);