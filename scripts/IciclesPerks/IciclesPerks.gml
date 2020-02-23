/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.Icicles;

switch (_perkId)
{
	case Perk.IciclesBullets:
		IncreaseBullets(_perkId, _weaponId);
	break;
	
	case Perk.IciclesRate:
		IncreaseRateOfFire(_perkId, _weaponId);
	break;
	
	case Perk.IciclesSpread:
		DecreaseSpread(_perkId, _weaponId);
	break;
	
	case Perk.IciclesReload:
		DecreaseReloadTime(_perkId, _weaponId);
	break;
	
	case Perk.IciclesMaxAmmo:
		IncreaseMaxAmmo(_perkId, _weaponId);
	break;
}