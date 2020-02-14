event_inherited()

instance_destroy(activeWeapon);

for (var i = 0; i < 5; i++)
{
	var _pickup = instance_create_layer(x, y, layer, obj_UltimatePickup);
	_pickup.ultimateNumber = round((global.Player.ultimateMaxEnergy * (ultimatePercent / 100)) / 5);
}

if (explosionObject != noone)
{
	SpawnExplosion(x, y, explosionObject, explosionDamage, explosionRadius);
	SpawnSplatterEffect(x, y, vfx_Splatter, 40, 5);
}

global.Score += scoreAdd;

for (var i = 0; i < 3; i++)
{
	instance_create_layer(x , y, layer, obj_MineStandard);
}

global.EnemiesTotal = Approach(global.EnemiesTotal, 0, 1);
var _currentCount = GetEnemyCount(object_index);
_currentCount--;
SetEnemyCount(object_index, _currentCount);