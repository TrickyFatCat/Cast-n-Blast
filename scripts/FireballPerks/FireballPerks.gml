/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.FireBall;

switch (_perkId)
{
	case Perk.FireballDamage:
		IncreaseDamage(_perkId, _weaponId);
	break;
	
	case Perk.FireballRate:
		IncreaseRateOfFire(_perkId, _weaponId);
	break;

	case Perk.FireballSpread:
		DecreaseSpread(_perkId, _weaponId);
	break;
	
	case Perk.FireballReload:
		DecreaseReloadTime(_perkId, _weaponId);
	break;
	
	case Perk.FireballMaxAmmo:
		IncreaseMaxAmmo(_perkId, _weaponId);
	break;
}