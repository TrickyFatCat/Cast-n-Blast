/// @param perkId
/// @param maxLevel
/// @param perkFactor
/// @param isIncreasing
/// @param isAbsolute
/// @param name

var _perkId = argument0;
var _maxLevel = argument1;
var _perkFactor = argument2;
var _isIncreasing = argument3;
var _isAbsolute = argument4;
var _name = argument5;

global.PerksData[_perkId] = ds_map_create();
var _data = global.PerksData[_perkId];
ds_map_add(_data, "currentLevel",	0);
ds_map_add(_data, "maxLevel",		_maxLevel);
ds_map_add(_data, "perkFactor",		_perkFactor);
ds_map_add(_data, "name",			_name);
ds_map_add(_data, "description",	GenerateDescription(_perkId, _isIncreasing, _isAbsolute));