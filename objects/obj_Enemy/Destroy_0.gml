event_inherited()

instance_destroy(activeWeapon);

for (var i = 0; i < scrapNumber; i++)
{
	instance_create_layer(x, y, layer, obj_Pickup_Scrap);
}

if (explosionObject != noone)
{
	SpawnExplosion(explosionObject, explosionDamage, explosionRadius);
	SpawnSplatterEffect(x, y, vfx_Splatter, 40, 5);
}

global.Score += scoreAdd;