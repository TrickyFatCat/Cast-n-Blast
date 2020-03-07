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
	break;
	
	case PlayerState.Dash:
		ActivateDash();
		MovePlayer;
		PullPickups;
		ProcessUltimate;
		//SpawnTrailEffect(vfx_Trail, 0.15, 1, true, false, true, false);
	break;
	
	case PlayerState.Transcendence:
		ExecutePlayerDeath;
	break;
	
	case PlayerState.Death:
	break;
}

CheckCollision(obj_Obstacle);