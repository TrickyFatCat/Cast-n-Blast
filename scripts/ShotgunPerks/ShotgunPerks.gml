/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.Shotgun;

switch (_perkId)
{
	case Perk.ShotgunBullets:
		IncreaseBullets(_perkId, _weaponId);
	break;
	
	case Perk.ShotgunRate:
		IncreaseRateOfFire(_perkId, _weaponId);
	break;
	
	case Perk.ShotgunSpread:
		DecreaseSpread(_perkId, _weaponId);
	break;
	
	case Perk.ShotgunReload:
		DecreaseReloadTime(_perkId, _weaponId);
	break;
	
	case Perk.ShotgunMaxAmmo:
		IncreaseMaxAmmo(_perkId, _weaponId);
	break;
}