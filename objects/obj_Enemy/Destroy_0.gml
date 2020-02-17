event_inherited()

instance_destroy(mainWeapon);

var _number = irandom_range(1, 5);
for (var i = 0; i < _number; i++)
{
	var _pickup = instance_create_layer(x, y, layer, obj_UltimatePointsPickup);
	_pickup.ultimatePointsNumber = round((global.Player.maxUltimatePoints * ultimatePointsDropFactor) / _number);
}

var _number = irandom(5);
for (var i = 0; i < _number; i++)
{
	instance_create_layer(x, y, layer, obj_ShieldPointsPickup);
}

var _number = irandom(5);
for (var i = 0; i < _number; i++)
{
	instance_create_layer(x, y, layer, obj_HitPointsPickup);
}

if (explosionObject != noone)
{
	SpawnExplosion(x, y, explosionObject, explosionDamage, explosionRadius);
	SpawnSplatterEffect(x, y, vfx_Splatter, 40, 5);
}

global.Score += scoreAdd;

//for (var i = 0; i < 3; i++)
//{
//	instance_create_layer(x , y, layer, obj_MineStandard);
//}

DecreaseTotalEnemies();
var _currentCount = GetEnemyCount(object_index);
_currentCount--;
SetEnemyCount(object_index, _currentCount);