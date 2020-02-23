/// @param weaponID

var _weaponID = argument0;
var _weaponObject = argument1;

with (_weaponObject)
{
	SetWeaponParameters(other.id, _weaponID, global.EnemyWeaponData);
}