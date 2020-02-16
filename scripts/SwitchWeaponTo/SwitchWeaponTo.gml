/// @param weaponId

var _weaponId = argument0;

if (_weaponId != weaponID)
{
	weaponID = _weaponId;
	SetPlayerWeapon(mainWeapon, weaponID);
	SetPlayerAmmo(mainWeapon.ammoID);
	InterruptReload();
}