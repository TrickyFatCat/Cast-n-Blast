if (nextRoom == -1)
{
	exit;
}

if (global.Player != noone)
{
	global.Player.x = spawnX;
	global.Player.y = spawnY;
}