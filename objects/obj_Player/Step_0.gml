/// @description AddidtionalMechanicsSequence

//Inherit the parent event
event_inherited();

switch (currentState)
{	
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
	break;
	
	case PlayerState.Transcendence:
		ExecutePlayerDeath;
	break;
	
	case PlayerState.Death:
		global.BattleState = BattleState.End;
	break;
}

CheckCollision(obj_Obstacle);