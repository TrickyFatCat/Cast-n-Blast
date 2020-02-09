var _arrayLength = array_length_1d(global.PerksData);

for (var i = 0; i < _arrayLength; i++)
{
	var _perkData = global.PerksData[i];
	ds_map_replace(_perkData, "currentLevel", 0);
}