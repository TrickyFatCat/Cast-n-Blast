/// @param perkId

var _perkId = argument0;

var _perkLevel = GetPerkLevel(_perkId);
var _perkFactor = GetPerkFactor(_perkId);

return _perkFactor * _perkLevel;