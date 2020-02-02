/// @param level

var _level = argument0;

var _partType = PartType.Weapon;
weaponHitPoints = GetPartMaxHp(_partType, _level);
weaponMaxHitPoints = GetPartMaxHp(_partType, _level);
weaponRepairCost = GetPartRepairCost(_partType, _level);
weaponUpgradeCost = GetPartUpgradeCost(_partType, _level);
weaponFactor = GetPartEffectivness(_partType, _level);
defaultWeaponFactor = weaponFactor;