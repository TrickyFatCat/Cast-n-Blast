// Inherit the parent event
event_inherited();

if (global.Player == noone)
{
	with (sys_GameManager)
	{
		spawnX = other.x;
		spawnY = other.y;
	}

	global.Player = instance_create_layer(x, y, "entities", obj_Player);
	SetCameraMode(CameraMode.FollowPointPeek);
}