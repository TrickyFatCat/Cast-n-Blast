/// @description  approach(start, end, shift);
/// @param start
/// @param end
/// @param shift

var _valStart = argument0;
var _valEnd = argument1;
var _valShift = argument2;

if (_valStart < _valEnd) {
	return min(_valStart + _valShift * global.TimeFactor, _valEnd);
}
else {
	return max(_valStart - _valShift * global.TimeFactor, _valEnd);
}