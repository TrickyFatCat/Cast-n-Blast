var _sumLevel = 0;
var _sumMaxLevel = 0;
var _arrayLength = array_length_1d(global.PerksData);

for (var i = 0; i < _arrayLength; i++)
{
	_sumLevel += GetPerkLevel(i);
	_sumMaxLevel += GetPerkMaxLevel(i);
}

return _sumLevel == _sumMaxLevel;