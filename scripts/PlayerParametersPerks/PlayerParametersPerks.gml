/// @param perkId

var _perkId = argument0;

switch (_perkId)
{
	case Perk.RunSpeed:
		global.Player.maxVelocity = IncreaseParameterPercent(_perkId, global.Player.defaultMaxVelocity);
	break;
	
	case Perk.DashSpeed:
		global.Player.dashVelocity = IncreaseParameterPercent(_perkId, global.Player.deafaultDashVelocity);
	break;
	
	case Perk.DashCharge:
		global.Player.maxDashCharge = IncreaseParameterAbsolute(_perkId, global.Player.defaultMaxDashCharge);
	break;
	
	case Perk.DashCoolDown:
		global.Player.dashCooldownTime = DecreaseParameterPercent(_perkId, global.Player.defaultDashCooldownTime);
	break;
	
	case Perk.MaxHitPoints:
		global.Player.maxHitPoints = IncreaseParameterPercent(_perkId, global.Player.defaultMaxHitPoints);
		global.Player.hitPoints = global.Player.maxHitPoints;
	break;
	
	case Perk.ShieldFactor:
		global.Player.shieldFactor = DecreaseParameterPercent(_perkId, global.Player.defaultShieldFactor);
	break;
	
	case Perk.MaxShieldPoints:
		global.Player.maxShieldPoints = IncreaseParameterAbsolute(_perkId, global.Player.defaultMaxShieldPoints);
		global.Player.shieldPoints = global.Player.maxShieldPoints;
	break;
	
	case Perk.PickupRadius:
		global.Player.pullDistance = IncreaseParameterPercent(_perkId, global.Player.defaultPullDistance);
	break;
	
	case Perk.MaxUltimate:
		global.Player.maxUltimatePoints = IncreaseParameterPercent(_perkId, global.Player.defaultMaxUltimatePoints);
		global.Player.ultimatePoints = global.Player.maxUltimatePoints;
	break;
	
	case Perk.UltimateGain:
		global.Player.ultimateGainFactor = IncreaseParameterPercent(_perkId, global.Player.defaultUltimateGainFactor);
	break;
}