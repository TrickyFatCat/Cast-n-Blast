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
	break;
	
	case PlayerState.Transcendence:
		ExecutePlayerDeath;
	break;
	
	case PlayerState.Death:
		//global.BattleState = BattleState.End;
	break;
}

CheckCollision(obj_Obstacle);

var warpPoint = instance_place(x, y, obj_WarpPoint);
if (warpPoint != noone && gui_Hud.currentState != InterfaceState.TransitionOut)
{
	if (sys_GameManager.keyInteract)
	{
		with (sys_GameManager)
		{
			nextRoom = warpPoint.targetRoom;
			spawnX = warpPoint.targetX;
			spawnY = warpPoint.targetY;
		}
	
		with (gui_Hud)
		{
			nextRoom = warpPoint.targetRoom;
			currentState = InterfaceState.TransitionOut;
		}
	}
}