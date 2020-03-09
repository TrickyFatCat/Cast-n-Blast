/// @param perkId
/// @param defaultValue

var _perkId = argument0;
var _defaultValue = argument1;

var _perkFactor = CalculatePerkFactor(_perkId);

return _defaultValue * (1 + _perkFactor);