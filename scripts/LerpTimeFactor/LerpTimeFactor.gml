/// @description lerp_timefactor(value, target, lerp);
/// @param value
/// @param target
/// @param lerpAlpha

/// Lerp function with time dialation

///	-----------------EXAMPLE-------------------///
/*
	// Step
	var time = 1.3;
	value = Tween_Lerp( value, 10, 0.1, time );
	
	//////////////////////////////////////////
	Lerps value to 10 with a time factor of 1.3x
*/


var _originalValue = argument[0];
var _targetValue = argument[1]; 
var _lerpAlpha = argument[2];

var _val = lerp( _originalValue, _targetValue, 1 - power( 1 - _lerpAlpha, global.TimeFactor));

return _val;