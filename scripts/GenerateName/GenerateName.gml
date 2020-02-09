/// @param perkId
/// @param generalName

var _perkId = argument0;
var _generalName = GetPerkName(_perkId);
var _level = Approach(GetPerkLevel(_perkId), GetPerkMaxLevel(_perkId), 1);

return _generalName + " V." + string(_level);