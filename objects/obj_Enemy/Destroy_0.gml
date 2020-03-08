event_inherited()

var _currentCount = GetEnemyCount(object_index);
_currentCount--;
SetEnemyCount(object_index, _currentCount);
DecreaseTotalEnemies();

if (mainWeapon != noone)
{
	instance_destroy(mainWeapon);
}

var _number = ultimatePointsDrop * 100;
for (var i = 0; i < _number; i++)
{
	var _pickup = instance_create_layer(x, y, layer, obj_UltimatePointsPickup);
	_pickup.ultimatePointsNumber = round((global.Player.maxUltimatePoints * ultimatePointsDrop) / _number);
}

for (var i = 0; i < shieldPointsDrop; i++)
{
	instance_create_layer(x, y, layer, obj_ShieldPointsPickup);
}

for (var i = 0; i < hitPointsDrop; i++)
{
	instance_create_layer(x, y, layer, obj_HitPointsPickup);
}

if (explosionObject != noone)
{
	SpawnExplosion(x, y, explosionObject, explosionDamage, explosionRadius);
	SpawnSplatterEffect(x, y, spr_bloodParticles, spr_bloodParticles, 50, 5);
}

var _reapingChance = 0.25;
var _diceRoll = random_range(0, 1);

if (_diceRoll <= _reapingChance)
{
	var _limbsNumber = irandom_range(5, limbsCount);
	for (var i = 0; i < 10; i++)
	{
		var _limb = instance_create_layer(x, y, layer, vfx_Limbs);
		_limb.directionCurrent = random(360);
	}
}

global.Score += scoreAdd;

path_delete(path);

PlaySoundAt(sfx_enemyDeath, 128, false);

//for (var i = 0; i < 3; i++)
//{
//	instance_create_layer(x , y, layer, obj_MineStandard);
//}