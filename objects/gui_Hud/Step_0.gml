/// @description Insert description here

// Inherit the parent event
event_inherited();

var _windowIsFocused = window_has_focus();

if (!_windowIsFocused)
{
	hudCurrentState = HUDState.PauseIn;
}