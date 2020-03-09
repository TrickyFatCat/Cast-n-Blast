event_inherited()

var _currentCount = GetEnemyCount(object_index);
_currentCount--;
SetEnemyCount(object_index, _currentCount);
DecreaseTotalEnemies();

if (mainWeapon != noone)
{
	instance_destroy(mainWeapon);
}

//var _number = ultimatePointsDrop * 100;
//for (var i = 0; i < _number; i++)
//{
//	var _pickup = instance_create_layer(x, y, layer, obj_UltimatePointsPickup);
//	_pickup.ultimatePointsNumber = round((global.Player.maxUltimatePoints * ultimatePointsDrop) / _number);
//}

var _number = array_length_1d(ultimatePickups);
for (var i = 0; i < _number; i++)
{
	ultimatePickups[i].ultimatePointsNumber = round((global.Player.maxUltimatePoints * ultimatePointsDrop) / _number);
}

ActivateObject(ultimatePickups);
ActivateObject(shieldPickups);
ActivateObject(hitPointsPickups)

if (explosionObject != noone)
{
	SpawnExplosion(x, y, explosionObject, explosionDamage, explosionRadius);
	SpawnSplatterEffect(x, y, spr_bloodParticles, spr_bloodParticles, 50, 5);
}

ActivateObject(limbs);

global.Score += scoreAdd;

path_delete(path);

PlaySoundAt(sfx_enemyDeath, 128, false);

//for (var i = 0; i < 3; i++)
//{
//	instance_create_layer(x , y, layer, obj_MineStandard);
//}