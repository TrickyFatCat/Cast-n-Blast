/// @param sound
/// @param falloffDistance
/// @param {bool} loop

var _sound = argument0;
var _distance = argument1;
var _loop = argument2;

audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_position(playerX, playerY, 0);
audio_play_sound_at(_sound, x, y, 0, 100, _distance, 1, _loop, 1); 