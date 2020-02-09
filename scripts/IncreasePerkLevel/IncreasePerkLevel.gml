/// @param perkId

var _perkId = argument0;

var _perkData = global.PerksData[_perkId];
var _level = GetPerkLevel(_perkId);
var _maxLevel = GetPerkMaxLevel(_perkId);

_level = Approach(_level, _maxLevel, 1);
ds_map_replace(_perkData, "currentLevel", _level);