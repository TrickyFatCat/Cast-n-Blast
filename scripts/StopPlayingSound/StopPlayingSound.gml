/// @param sound

var _sound = argument0;

if (audio_is_playing(_sound))
{
	audio_stop_sound(_sound);
}