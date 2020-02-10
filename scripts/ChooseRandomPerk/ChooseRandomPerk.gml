var _sumLevel = 0;
var _sumMaxLevel = 0;
var _perkLevel = 0;
var _perkMaxLevel = 0;
var _isMaxed = false;
var _activePerksSize = ds_list_size(global.ActivePerks);
var _chosenPerksSize = ds_list_size(global.ChosenPerks);
var _perkId = 0;
var _isAppropriate = false;
var _newId = 0;

if (_chosenPerksSize < _activePerksSize)
{
	_newId = irandom(_activePerksSize - 1)
	_perkId = ds_list_find_value(global.ActivePerks, _newId);
	_perkLevel = GetPerkLevel(_perkId);
	_perkMaxLevel = GetPerkMaxLevel(_perkId);
	
	var _wasChosen = ds_list_find_index(global.ChosenPerks, _perkId);
	var _isMaxed = _perkLevel == _perkMaxLevel;
		
	if (_wasChosen != -1 || _isMaxed)
	{
		do
		{
			_newId = irandom(_activePerksSize - 1)
			_perkId = ds_list_find_value(global.ActivePerks, _newId);
			_perkLevel = GetPerkLevel(_perkId);
			_perkMaxLevel = GetPerkMaxLevel(_perkId);
		
			var _wasChosen = ds_list_find_index(global.ChosenPerks, _perkId);
			var _isMaxed = _perkLevel == _perkMaxLevel;
		
			if (_wasChosen != -1 || _isMaxed)
			{
				_isAppropriate = false;
			}
			else
			{
				_isAppropriate = true;
				ds_list_add(global.ChosenPerks, _perkId);
			}
		}
		until _isAppropriate == true;
	}
	else
	{
		ds_list_add(global.ChosenPerks, _perkId);
	}
	
	return _perkId;
}

return noone;