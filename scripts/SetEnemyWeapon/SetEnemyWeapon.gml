/// @param weaponID

var _weaponID = argument0;

with (mainWeapon)
{
	SetWeaponParameters(other.id, _weaponID, global.EnemyWeaponData);
}