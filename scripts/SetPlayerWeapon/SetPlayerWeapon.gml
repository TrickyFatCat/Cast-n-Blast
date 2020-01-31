/// @param targetWeapon
/// @param weaponID

var _weapon = argument0;
var _weaponID = argument1;

with (_weapon)
{
	SetWeaponParameters(other.object_index, _weaponID, global.PlayerWeaponData);
}