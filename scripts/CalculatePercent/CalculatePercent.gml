/// @param valueA
/// @param valueB
/// @param roundType

var _valueA = argument0;
var _valueB = argument1;
var _roundType = argument2;

enum RoundType
{
	None,
	Standard,
	Ceil,
	Floor
}

var _result = 100 * (_valueA / _valueB);

switch (_roundType)
{
	case RoundType.Standard:
		_result = round(_result);
	break;
	
	case RoundType.Ceil:
		_result = ceil(_result);
	break;
	
	case RoundType.Floor:
		_result = floor(_result);
	break;
}

return _result;