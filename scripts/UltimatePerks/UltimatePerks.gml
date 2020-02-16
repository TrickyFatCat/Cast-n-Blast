/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.UltimateGun;

switch (_perkId)
{
	case Perk.UltimateDamage:
		IncreaseDamage(_perkId, _weaponId);
	break;
}