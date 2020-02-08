/// @param defaultValue

var _defaultValue = argument0;

IncreasePerkLevel();
var _perkFactor = CalculatePerkFactor();
return _defaultValue * (1 + _perkFactor);