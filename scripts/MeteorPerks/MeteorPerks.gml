/// @param perkId

var _perkId = argument0;

var _weaponId = PlayerWeapon.Meteor;

switch (_perkId)
{
	case Perk.MeteorDamage:
		IncreaseDamage(_perkId, _weaponId);
	break;
	
	case Perk.MeteorMaxAmmo:
		IncreaseMaxAmmo(_perkId, _weaponId);
	break;
	
	case Perk.MeteorRecoveryRate:
		IncreaseRecoveryRate(_perkId, _weaponId);
	break;
}