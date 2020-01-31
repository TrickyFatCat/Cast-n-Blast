/// @param gamepadSlot
/// @param verticalAxis
/// @param horizontalAxis

var _gamepadSlot	= argument0;
var _axisV			= argument1;
var _axisH			= argument2;

var _axisVertical = gamepad_axis_value(_gamepadSlot, _axisV);
var _axisHorizontal = gamepad_axis_value(_gamepadSlot, _axisH);
var _axisDeadZone = gamepad_get_axis_deadzone(_gamepadSlot);
var _axisVerticalChanged = _axisVertical > _axisDeadZone || _axisVertical < -_axisDeadZone;
var _axisHorizontalChanged = _axisHorizontal > _axisDeadZone || _axisHorizontal < -_axisDeadZone;

return _axisVerticalChanged || _axisHorizontalChanged;