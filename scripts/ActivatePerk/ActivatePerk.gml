/// @param perkId

var _perkId = argument0;

var _plasmaId = PlayerWeapon.PlasmaGun;
var _shotgunId = PlayerWeapon.Shotgun;
var _ultimateId = PlayerWeapon.UltimateGun;

IncreasePerkLevel(_perkId);

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
		global.Player.maxShieldPoints = IncreaseParameterPercent(_perkId, global.Player.defaultMaxShieldPoints);
		global.Player.shieldPoints = global.Player.maxShieldPoints;
	break;
	
	case Perk.MaxUltimate:
		global.Player.maxUltimatePoints = IncreaseParameterPercent(_perkId, global.Player.defaultMaxUltimatePoints);
		global.Player.ultimatePoints = global.Player.maxUltimatePoints;
	break;
	
	case Perk.UltimateGain:
		global.Player.ultimateGainFactor = IncreaseParameterPercent(_perkId, global.Player.defaultUltimateGainFactor);
	break;
	
	case Perk.UltimateDamage:
		UpdateWeaponParameter(_perkId, _ultimateId, "damage", true, false);
		
		with (global.Player)
		{
			SetPlayerWeapon(ultimateWeapon, _ultimateId);
		}
	break;
	
	case Perk.PlasmaDamage:
		UpdateWeaponParameter(_perkId, _plasmaId, "damage", true, false);
		
		with (global.Player)
		{
			SetPlayerWeapon(mainWeapon, _plasmaId);
		}
	break;
	
	case Perk.PlasmaRate:
		UpdateWeaponParameter(_perkId, _plasmaId, "rateOfFireMin", true, false);
		
		with (global.Player)
		{
			SetPlayerWeapon(mainWeapon, _plasmaId);
		}
	break;

	case Perk.PlasmaSpread:
		UpdateWeaponParameter(_perkId, _plasmaId, "spreadAngleMin", false, false);
		
		with (global.Player)
		{
			SetPlayerWeapon(mainWeapon, _plasmaId);
		}
	break;
	
	case Perk.ShotgunBullets:
		UpdateWeaponParameter(_perkId, _shotgunId, "bulletNumber", true, true);
		
		with (global.Player)
		{
			SetPlayerWeapon(secondaryWeapon, _shotgunId);
		}
	break;
	
	case Perk.ShotgunRate:
		UpdateWeaponParameter(_perkId, _shotgunId, "rateOfFireMin", true, false);
		
		with (global.Player)
		{
			SetPlayerWeapon(secondaryWeapon, _shotgunId);
		}
	break;
	
	case Perk.ShotgunSpread:
		UpdateWeaponParameter(_perkId, _shotgunId, "spreadAngleMin", false, false);
		with (global.Player)
		{
			SetPlayerWeapon(secondaryWeapon, _shotgunId);
		}
	break;
}