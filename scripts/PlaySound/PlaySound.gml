/// @param sound

var _sound = argument0;

if (!audio_is_playing(_sound))
{
	audio_play_sound(_sound, 0, false);
}