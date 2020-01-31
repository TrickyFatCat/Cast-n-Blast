// Inherit the parent event
event_inherited();

if (laserObjects != noone)
{
	DestroyBulletObjects(laserObjects);
	ds_list_destroy(laserObjects);
}

if (hitscanObjects != noone)
{
	DestroyBulletObjects(hitscanObjects);
	ds_list_destroy(hitscanObjects);
}