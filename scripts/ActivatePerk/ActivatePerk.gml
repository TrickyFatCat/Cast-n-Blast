/// @param perkId

var _perkId = argument0;

var _playerMainWeapon = global.Player.activeWeapon;
var _playerSecondaryWeapon = global.Player.secondaryWeapon;

IncreasePerkLevel(_perkId);

switch (_perkId)
{
	case Perk.RunSpeed:
		global.Player.maxVelocity = IncreaseParameter(_perkId, global.Player.defaultMaxVelocity);
	break;
	
	case Perk.DashSpeed:
		global.Player.deafaultDashVelocity = IncreaseParameter(_perkId, global.Player.deafaultDashVelocity);
	break;
	
	case Perk.MaxHitpoints:
		global.Player.maxHitPoints = IncreaseParameter(_perkId, global.Player.defaultMaxHitPoints);
		global.Player.hitPoints = global.Player.maxHitPoints;
	break;
	
	case Perk.ShieldFactor:
		global.Player.shieldFactor = IncreaseParameter(_perkId, global.Player.defaultShieldFactor);
	break;
	
	case Perk.RepairCost:
		show_debug_message("Not yet implemented");
	break;
	
	case Perk.RepairRate:
		show_debug_message("Not yet implemented");
	break;
	
	case Perk.MaxEnergy:
		global.Player.maxEnergy = IncreaseParameter(_perkId, global.Player.defaultMaxEnergy);
	break;
	
	case Perk.EnergyRestore:
		global.Player.energyRestoreRate = IncreaseParameter(_perkId, global.Player.defaultEnergyRestoreRate);
	break;
	
	case Perk.OverheatTime:
		global.Player.overheatPenaltyTime = DecreaseParameter(_perkId, global.Player.defaultOverheatPenaltyTime);
		global.Player.shootPenaltyTime = DecreaseParameter(_perkId, global.Player.defaultShootPenaltyTime);
	break;
	
	case Perk.MaxUltimate:
		global.Player.ultimateMaxEnergy = IncreaseParameter(_perkId, global.Player.defaultUltimateMaxEnergy);
		global.Player.ultimateEnergy = global.Player.ultimateMaxEnergy;
	break;
	
	case Perk.UltimateGain:
		global.Player.ultimateGainFactor = IncreaseParameter(_perkId, global.Player.defaultUltimateGainFactor);
	break;
	
	case Perk.MainDamage:
		_playerMainWeapon.damage = IncreaseParameter(_perkId, global.Player.mainDefaultDamage);
	break;
	
	case Perk.MainRof:
		_playerMainWeapon.rateOfFireCurrent = IncreaseParameter(_perkId, global.Player.mainDefaultRof);
	break;

	
	case Perk.MainSpread:
		_playerMainWeapon.spreadAngleCurrent = DecreaseParameter(_perkId, global.Player.mainDefaultSpread);
	break;
	
	case Perk.SecondaryBulletNumber:
		_playerSecondaryWeapon.bulletNumber += 1;
	break;
	
	case Perk.SecondaryRof:
		_playerSecondaryWeapon.rateOfFireCurrent = IncreaseParameter(_perkId, global.Player.secondaryDefaultRof);
	break;
	
	case Perk.SecondarySpread:
		_playerSecondaryWeapon.spreadAngleCurrent = DecreaseParameter(_perkId, global.Player.secondaryDefaultSpread);
	break;
}