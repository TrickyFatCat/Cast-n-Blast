/// @param perkId
/// @param isIncreasing
/// @param isAbsolute

var _perkId = argument0;
var _isIncreasing = argument1;
var _isAbsolute = argument2;

var _beginning;
var _amount = GetPerkFactor(_perkId);
var _end = "";

if (_isIncreasing)
{
	_beginning = "Increase by ";
}
else
{
	_beginning = "Decrease by ";
}

if (!_isAbsolute)
{
	_end = "%";
	_amount *= 100;
}

return _beginning + string(_amount) + _end;