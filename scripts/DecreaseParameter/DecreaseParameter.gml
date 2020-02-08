/// @param defaultValue

var _defaultValue = argument0;

IncreasePerkLevel(perkId);
var _perkFactor = CalculatePerkFactor(perkId);
return _defaultValue * (1 - _perkFactor);