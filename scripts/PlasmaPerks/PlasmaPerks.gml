/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.PlasmaGun;

switch (_perkId)
{
	case Perk.PlasmaDamage:
		IncreaseDamage(_perkId, _weaponId);
	break;
	
	case Perk.PlasmaRate:
		IncreaseRateOfFire(_perkId, _weaponId);
	break;

	case Perk.PlasmaSpread:
		DecreaseSpread(_perkId, _weaponId);
	break;
	
	case Perk.PlasmaReload:
		DecreaseReloadTime(_perkId, _weaponId);
	break;
	
	case Perk.PlasmaMaxAmmo:
		IncreaseMaxAmmo(_perkId, _weaponId);
	break;
}