/// @param lootTable

var _dataTable = argument0;

var _result;
var _objectData;
var _currentWeight = 0;

var _arrayLength = array_length_1d(_dataTable);
var _maxWeight = SetMaxWeight(_dataTable);

var _diceRoll = irandom_range(1, _maxWeight);

var _currentNumber = 0;
var _maxNumber = 0;

while (_diceRoll > _currentWeight)
{
	for (var i = 0; i < _arrayLength; i++)
	{
		_objectData = _dataTable[i];
	
		var _object = GetObjectID(_objectData);
		var _weight = GetObjectWeight(_objectData);
		var _maxNumber = GetObjectNumber(_objectData);
		var _currentNumber = GetEnemyCount(_object);
		
		if (_currentNumber < _maxNumber)
		{
			_currentWeight += _weight;
			
			if (_diceRoll <= _currentWeight)
			{
				break;
			}
		}
	}
}

//if (is_array(_object))
//{
//	return _object;
//}

_result = ds_map_create();
ds_map_copy(_result, _objectData);

return _result;