/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.ArcaneSpear;

switch (_perkId)
{
	case Perk.ArcaneDamage:
		IncreaseChargeDamage(_perkId, _weaponId);
	break;
	
	case Perk.ArcaneMaxAmmo:
		IncreaseMaxAmmo(_perkId, _weaponId);
	break;
	
	case Perk.ArcaneChargeSpeed:
		DecreaseChargeTime(_perkId, _weaponId);
	break;
	
	case Perk.ArcaneRecoveryRate:
		IncreaseRecoveryRate(_perkId, _weaponId);
	break;
}