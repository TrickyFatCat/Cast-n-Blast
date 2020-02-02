// Inherit the parent event
event_inherited();

	with (sys_GameManager)
	{
		spawnX = other.x;
		spawnY = other.y;
	}

	global.Player = instance_create_layer(x, y, "entities", obj_Player);
	global.BattleState = BattleState.Start;
