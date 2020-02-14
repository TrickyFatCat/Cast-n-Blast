enemiesMaxNumber = 0;
var _arrayLength = array_length_1d(waveData);
for (var i = 0; i < _arrayLength; i++)
{
	var _enemy = waveData[i];
	var _enemyMaxNumber = GetObjectNumber(_enemy);
	enemiesMaxNumber += _enemyMaxNumber;
}

show_debug_message(enemiesMaxNumber);