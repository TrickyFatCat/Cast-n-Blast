/// @param dataTable

var _dataTable = argument0;

var _arrayLength = array_length_1d(_dataTable);

var _maxWeight = 0;

for (var i = 0; i < _arrayLength; i++)
{
	var _objectData = _dataTable[i];
	var _object = GetObjectID(_objectData);
	var _objectMaxNumber = GetObjectNumber(_objectData);
	var _objectCurrentNumber = GetEnemyCount(_object);
	
	if (_objectCurrentNumber < _objectMaxNumber)
	{
		_maxWeight += GetObjectWeight(_objectData);
	}
}

return _maxWeight;