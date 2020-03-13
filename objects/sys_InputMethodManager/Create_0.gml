// Create a list of gamepad slots
connectedGamepads = ds_list_create();

enum KeyboardLayout
{
	QWERTY,
	AZERTY,
	DVORAK
}

// Set active gamepad
global.ActiveGamepad = noone;
global.KeyboardLayout = KeyboardLayout.QWERTY;

// Setup input methods
enum InputMethod
{
	Gamepad,
	KeyboardMouse
}
// Set current input
global.CurrentInput = InputMethod.KeyboardMouse;

// Set deadzone and threshhold for Xbox gamepad
xboxAxisDeadzone = 0.25;
xboxButtonThreshhold = 0.1;

// Set deadzone and threshhold for PS4 gamepad
ps4AxisDeadzone = 0.2;
ps4ButtonThreshhold = 0.1;