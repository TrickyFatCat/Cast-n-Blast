var _sumLevel = 0;
var _sumMaxLevel = 0;
var _perkData = noone;
var _perkLevel = 0;
var _perkMaxLevel = 0;
var _perkId = 0;
var _isAppropriate = false;
var _arrayLength = array_length_1d(global.PerksData);

for (var i = 0; i < _arrayLength - 1; i++)
{
	_perkLevel = GetPerkLevel(i);
	_perkMaxLevel = GetPerkMaxLevel(i);
	_sumLevel += _perkLevel;
	_sumMaxLevel += _perkMaxLevel;
}

if (_sumLevel < _perkMaxLevel)
{
	_perkId = irandom(_arrayLength - 1);
	_perkLevel = GetPerkLevel(_perkId);
	_perkMaxLevel = GetPerkMaxLevel(_perkId);
	
	do
	{
		_perkId = irandom(_arrayLength - 1);
		_perkLevel = GetPerkLevel(_perkId);
		_perkMaxLevel = GetPerkMaxLevel(_perkId);
		
		var _wasChosen = ds_list_find_index(global.ChosenPerks, _perkId)
		var _isMaxed = _perkLevel == _perkMaxLevel;
		
		if (_wasChosen || _isMaxed)
		{
			_isAppropriate = false;
		}
		else
		{
			_isAppropriate = true;
		}
	}
	until _isAppropriate == true;
	
	ds_list_add(global.ChosenPerks, _perkId);
	
	return _perkId;
}