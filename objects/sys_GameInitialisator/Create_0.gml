/// @description CreateNecessaryObjects

pcVersion = true;

global.TimeFactor = 1;
global.InteractiveObjects = noone;
global.EnemySpawns = ds_list_create();

randomize();

var _array = [];

_array[0] = sys_DisplayManager;
_array[1] = sys_Drawer;
_array[2] = sys_InputMethodManager;
_array[3] = sys_GameManager;
_array[4] = sys_GameDataHandler;
_array[5] = obj_Camera;
_array[6] = sys_Debugger;
_array[7] = sys_BattleController;
_array[8] = sys_VfxController;
_array[9] = sys_GifRecorder;
_array[10] = sys_PickupsController;

var _length = array_length_1d(_array);

for (var i = 0; i < _length; i++)
{
	instance_create_layer(0, 0, layer, _array[i]);
}

room_goto(rm_mainMenu);