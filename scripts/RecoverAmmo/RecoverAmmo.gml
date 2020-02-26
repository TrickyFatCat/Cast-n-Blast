/// @param ammoId

var _ammoId = argument0;

var _ammo = GetCurrentAmmo(_ammoId);
var _maxAmmo = GetMaxAmmo(_ammoId);

_ammo = Approach(_ammo, _maxAmmo, 1);
ds_map_replace(sessionAmmoData[_ammoId], "ammo", _ammo);
return _ammo;