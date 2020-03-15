/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (audio_is_playing(bgm_menu))
{
	audio_sound_gain(bgm_menu, 0, 0.25);
	if (audio_sound_get_gain(bgm_menu) == 0)
	{
		audio_stop_sound(bgm_menu)
	}
}