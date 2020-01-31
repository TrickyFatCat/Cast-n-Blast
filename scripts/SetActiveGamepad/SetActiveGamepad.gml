// @param gamepadSlot

var _gamepadSlot = argument0;

global.ActiveGamepad = _gamepadSlot;
if (_gamepadSlot >= 0 && _gamepadSlot <= 3) // Set dead zones for Xbox controller
{
	gamepad_set_axis_deadzone(_gamepadSlot, xboxAxisDeadzone);
	gamepad_set_button_threshold(_gamepadSlot, xboxButtonThreshhold);
}
else // Set dead zones for Playstation controller
{
	gamepad_set_axis_deadzone(_gamepadSlot, ps4AxisDeadzone);
	gamepad_set_button_threshold(_gamepadSlot, ps4ButtonThreshhold);
}