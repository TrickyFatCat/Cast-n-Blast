/// @param level

var _level = argument0;
var _partType = PartType.Case;

caseHitPoints = GetPartMaxHp(_partType, _level);
caseMaxHitPoints = GetPartMaxHp(_partType, _level);
caseRepairCost = GetPartRepairCost(_partType, _level);
caseUpgradeCost = GetPartUpgradeCost(_partType, _level);
caseFactor = GetPartEffectivness(_partType, _level);