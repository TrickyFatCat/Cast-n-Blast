/// @param targetWeapon
/// @param weaponID

var _weapon = argument0;
var _weaponID = argument1;

with (_weapon)
{
	isShooting = false;
	castProgress = 0;
	chargeProgress = 0;
	shotCount = 0;
	SetWeaponParameters(other.object_index, _weaponID, obj_Player.sessionWeaponData);
}

SetPlayerAmmo(mainWeapon.ammoID);
reloadTime = SetTime(mainWeapon.reloadTime);