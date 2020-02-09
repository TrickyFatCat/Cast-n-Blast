var _arrayLength = array_length_1d(global.PerksData);

ds_list_clear(global.ActivePerks);
ds_list_clear(global.ChosenPerks);

for (var i = 0; i < _arrayLength; i++)
{
	var _perkLevel = GetPerkLevel(i);
	var _perkMaxLevel = GetPerkMaxLevel(i);
	
	if (_perkLevel < _perkMaxLevel)
	{
		ds_list_add(global.ActivePerks, i);
	}
}