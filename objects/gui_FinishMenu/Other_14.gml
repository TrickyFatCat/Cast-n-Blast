/// @description MainMenuStepController

event_inherited()

CheckButtonActions;

if !audio_is_playing(bgm_menu)
{
	audio_play_sound(bgm_menu, 1, true);
	audio_sound_gain(bgm_menu, 0.5, 0.25);
}