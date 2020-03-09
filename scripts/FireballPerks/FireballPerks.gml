/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.FireBall;

switch (_perkId)
{
	case Perk.FireballDamage:
		IncreaseDamage(_perkId, _weaponId);
	break;
	
	case Perk.FireballMaxAmmo:
		IncreaseMaxAmmo(_perkId, _weaponId);
	break;
	
	case Perk.FireballRecoveryRate:
		IncreaseRecoveryRate(_perkId, _weaponId);
	break;
}