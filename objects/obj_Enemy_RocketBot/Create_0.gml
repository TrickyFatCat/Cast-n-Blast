// Inherit the parent event
event_inherited();
secondaryWeapon = instance_create_layer(x, y, layer, obj_EnemyWeapon);
with (secondaryWeapon)
{
	SetWeaponParameters(other.id, other.weaponId, global.EnemyWeaponData);
}
//mainWeapon.shotSound = sfx_impshot;