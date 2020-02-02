/// @param partType
/// @param partLevel

var _partType = argument0;
var _partLevel = argument1;

var _partTypeData = global.PartsData[_partType];
var _partData = _partTypeData[_partLevel];

return _partData[? "repairCost"];