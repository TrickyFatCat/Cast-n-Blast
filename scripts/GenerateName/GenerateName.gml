/// @param perkId

var _perkId = argument0;
var _showNextLevel = argument1;

var _level = GetPerkLevel(_perkId);
var _generalName = GetPerkName(_perkId);

if (_showNextLevel)
{
	_level = Approach(GetPerkLevel(_perkId), GetPerkMaxLevel(_perkId), 1);
}

return _generalName + " V." + string(_level);