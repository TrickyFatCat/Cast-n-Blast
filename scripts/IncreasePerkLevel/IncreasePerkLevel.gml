var _perkData = global.PerksData[perkId];
var _level = GetPerkLevel(perkId);
var _maxLevel = GetPerkMaxLevel(perkId);

_level = Approach(_level, _maxLevel, 1);
ds_map_replace(_perkData, "currentLevel", _level);