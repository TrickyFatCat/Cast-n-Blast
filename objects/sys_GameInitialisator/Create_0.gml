/// @description CreateNecessaryObjects

pcVersion = true;

global.TimeFactor = 1;

randomize();

var _array = [];

_array[0] = sys_DisplayManager;
_array[1] = sys_Drawer;
_array[2] = sys_InputMethodManager;
_array[3] = sys_GameManager;
_array[4] = obj_Camera;
_array[5] = sys_Debugger;
//_array[3] = obj_battleStateHandler;
//_array[6] = obj_gameDataHandler;
//_array[7] = obj_gifRecorder;

var _length = array_length_1d(_array);

for (var i = 0; i < _length; i++)
{
	instance_create_layer(0, 0, layer, _array[i]);
}

room_goto(rm_mainMenu);