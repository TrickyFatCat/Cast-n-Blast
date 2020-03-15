/// @description CreateNecessaryObjects

global.TimeFactor = 1;
global.InteractiveObjects = noone;
global.EnemySpawns = ds_list_create();
global.Music = noone;

show_debug_overlay(false);

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
_array[11] = sys_AiController;
_array[12] = sys_ProjectileController;

var _length = array_length_1d(_array);

for (var i = 0; i < _length; i++)
{
	instance_create_layer(0, 0, layer, _array[i]);
}

audio_play_sound(bgm_menu, 1, true);

room_goto(rm_mainMenu);