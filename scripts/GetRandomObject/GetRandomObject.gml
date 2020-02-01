/// @param lootTable

var _dataTable = argument0;

var _result;
var _objectData;
var _currentWeight = 0;

var _arrayLength = array_length_1d(_dataTable);
var _maxWeight = SetMaxWeight(_dataTable);

var _diceRoll = irandom_range(1, _maxWeight);

for (var i = 0; i < _arrayLength; i++)
{
	_objectData = _dataTable[i];
	
	var _object = GetObjectID(_objectData);
	var _weight = GetObjectWeight(_objectData);
	
	_currentWeight += _weight;
	
	if (_diceRoll <= _currentWeight)
	{
		if (is_array(_object))
		{
			return _object;
		}
		else
		{
			break;
		}
	}
}

_result = ds_map_create();
ds_map_copy(_result, _objectData);

return _result;