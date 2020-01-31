///@param factorCurrent
///@param factorMax

var _factorCurrent = argument0;
var _factorMax = argument1;

if (_factorMax > 1)
{
	_factorCurrent = LerpTimeFactor(1, _factorMax, chargeProgress);
}

if (chargeProgress == 1 && _factorMax > 1)
{
	_factorCurrent = _factorMax;
}

return _factorCurrent