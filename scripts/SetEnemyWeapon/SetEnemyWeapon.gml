/// @param weaponID

var _weaponID = argument0;

with (activeWeapon)
{
	SetWeaponParameters(other.id, _weaponID, global.EnemyWeaponData);
}