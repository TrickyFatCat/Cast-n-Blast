event_inherited()

instance_destroy(mainWeapon);

for (var i = 0; i < 5; i++)
{
	var _pickup = instance_create_layer(x, y, layer, obj_UltimatePointsPickup);
	_pickup.ultimateNumber = round((global.Player.maxUltimatePoints * (ultimatePercent / 100)) / 5);
	
	instance_create_layer(x, y, layer, obj_ShieldPointsPickup);
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