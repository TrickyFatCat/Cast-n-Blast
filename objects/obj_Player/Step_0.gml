/// @description AddidtionalMechanicsSequence

//Inherit the parent event
event_inherited();

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
	break;
	
	case PlayerState.Run:
		RespondToControls;
		MovePlayer;
		ChangeSprite;
		RotateWeapon;
		ShootWeapon;
		PullPickups;
	break;
	
	case PlayerState.Jump:
	break;
	
	case PlayerState.Dash:
		MovePlayer;
		PullPickups;
	break;
	
	case PlayerState.Transcendence:
		ExecutePlayerDeath;
	break;
	
	case PlayerState.Death:
	break;
}

CheckCollision(obj_Obstacle);