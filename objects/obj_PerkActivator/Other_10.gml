var _playerMainWeapon = global.Player.activeWeapon;
var _playerSecondaryWeapon = global.Player.secondaryWeapon;

ResetWave;

switch (perkId)
{
	case Perk.RunSpeed:
		global.Player.maxVelocity = IncreaseParameter(global.Player.defaultMaxVelocity);
	break;
	
	case Perk.DashSpeed:
		global.Player.deafaultDashVelocity = IncreaseParameter(global.Player.deafaultDashVelocity);
	break;
	
	case Perk.MaxHitpoints:
		global.Player.maxHitPoints = IncreaseParameter(global.Player.defaultMaxHitPoints);
		global.Player.hitPoints = global.Player.maxHitPoints;
	break;
	
	case Perk.ShieldFactor:
		global.Player.shieldFactor = IncreaseParameter(global.Player.defaultShieldFactor);
	break;
	
	case Perk.RepairCost:
		show_debug_message("Not yet implemented");
	break;
	
	case Perk.RepairRate:
		show_debug_message("Not yet implemented");
	break;
	
	case Perk.MaxEnergy:
		global.Player.maxEnergy = IncreaseParameter(global.Player.defaultMaxEnergy);
	break;
	
	case Perk.EnergyRestore:
		global.Player.energyRestoreRate = IncreaseParameter(global.Player.defaultEnergyRestoreRate);
	break;
	
	case Perk.OverheatTime:
		show_debug_message("Not yet implemented");
	break;
	
	case Perk.MaxUltimate:
		global.Player.ultimateMaxEnergy = IncreaseParameter(global.Player.defaultUltimateMaxEnergy);
		global.Player.ultimateEnergy = global.Player.ultimateMaxEnergy;
	break;
	
	case Perk.UltimateGain:
		global.Player.ultimateGainFactor = IncreaseParameter(global.Player.defaultUltimateGainFactor);
	break;
	
	case Perk.MainDamage:
		_playerMainWeapon.damage = IncreaseParameter(global.Player.mainDefaultDamage);
	break;
	
	case Perk.MainRof:
		_playerMainWeapon.rateOfFireCurrent = IncreaseParameter(global.Player.mainDefaultRof);
	break;

	
	case Perk.MainSpread:
		_playerMainWeapon.spreadAngleCurrent = DecreaseParameter(global.Player.mainDefaultSpread);
	break;
	
	case Perk.SecondaryBulletNumber:
		IncreasePerkLevel();
		_playerSecondaryWeapon.bulletNumber += 1;
	break;
	
	case Perk.SecondaryRof:
		_playerSecondaryWeapon.rateOfFireCurrent = IncreaseParameter(global.Player.secondaryDefaultRof);
	break;
	
	case Perk.SecondarySpread:
		_playerSecondaryWeapon.spreadAngleCurrent = DecreaseParameter(global.Player.secondaryDefaultSpread);
	break;
}