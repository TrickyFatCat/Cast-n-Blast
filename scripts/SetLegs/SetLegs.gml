/// @param level

var _level = argument0;
var _partType = PartType.Legs;

legsHitPoints = GetPartMaxHp(_partType, _level);
legsMaxHitPoints = GetPartMaxHp(_partType, _level);
legsRepairCost = GetPartRepairCost(_partType, _level);
legsUpgradeCost = GetPartUpgradeCost(_partType, _level);
legsFactor = GetPartEffectivness(_partType, _level);