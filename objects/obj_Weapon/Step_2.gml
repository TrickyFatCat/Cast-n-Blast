/// @description SpawnPositionHandler

drawAngle = directionCurrent;

var _deltaX = lengthdir_x(bulletSpawnPointOffset, directionCurrent);
var _deltaY = lengthdir_y(bulletSpawnPointOffset, directionCurrent);

if (instance_exists(owner))
{
	var _x = owner.x;
	var _y = owner.y - z - offsetY;


bulletSpawnPointX = _x + _deltaX;
bulletSpawnPointY = _y + _deltaY;

switch (bulletObjectParent)
{
	case obj_Hitscan:
		SetBulletTransform(hitscanObjects);
	break;

	case obj_Laser:
		SetBulletTransform(laserObjects);
	break;
}

}