/// @description Sets cameraShakeValue and controls angular shake

/// @param angularShakeEnabled
/// @param shakeValue

var _angularShakeEnabled = argument0;
var _shakeValue = argument1;

if round(global.Camera.cameraShakeValue == 0)
{
	global.Camera.angularShakeEnabled = _angularShakeEnabled;
	global.Camera.cameraShakeValue = _shakeValue;
}