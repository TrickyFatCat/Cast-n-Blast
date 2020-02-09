
// Inherit the parent event
event_inherited();

draw_set_alpha(hudAlpha);
draw_set_font(fnt_large);
SetAlign(fa_center, fa_center);


var _startTimer = sys_BattleController.battleStartTimer;
var _startTime = sys_BattleController.battleStartTime;

switch (global.BattleState)
{
	case BattleState.Start:
		var _timeLeft = round((_startTime - _startTimer) / 60);

		if (_timeLeft > 0)
		{
			DrawTiltedText(fnt_large, guiWidth / 2, 0, guiHeight * 0.4, 2, c_maroon, c_red, "ROUND STARTS IN");
			DrawTiltedText(fnt_large, guiWidth / 2, 0, guiHeight * 0.6, 2, c_maroon, c_red, string(_timeLeft));
		}
		else 
		{
			showStartBattleText = true;
			//if (!audio_is_playing(snd_enter_battle)) {
					
			//	audio_play_sound(snd_enter_battle, 1000, false);
			//}
		}
		
		if (sys_BattleController.randomPerk != noone)
		{
			showRandomPerkTimer += global.TimeFactor;
	
			var _timeIsOver = CheckTimer(showRandomPerkTimer, showRandomPerkTime);
	
			if (!_timeIsOver)
			{
				showRandomPerk = true;
			}
			else
			{
				showRandomPerk = false;
			}
		}
			
	break;
	
	case BattleState.Active:
		#region Texts
		showRandomPerkTimer = 0;
		
		if (showStartBattleText) 
		{
			var _textTime = SetTime(1.25);
			startBattleTextTimer += global.TimeFactor;
			var _timerIsOver = CheckTimer(startBattleTextTimer, _textTime);
	
			if (!_timerIsOver) 
			{
				DrawTiltedText(fnt_large, guiWidth / 2, 0, guiHeight / 2, 2, c_maroon, c_red, "ROUND " + string(global.Round));
			}
			else 
			{
				showStartBattleText = !showStartBattleText;
				startBattleTextTimer = 0;
				showFightText = true;
			}
		}

		if (showFightText)
		{
			var _textTime = SetTime(1.25);
			showFightTextTimer += global.TimeFactor;
			var _timeIsOver = CheckTimer(showFightTextTimer, _textTime);
	
			if (!_timeIsOver)
			{
				DrawTiltedText(fnt_large, guiWidth / 2, 0, guiHeight / 2, 2, c_maroon, c_red, "CRASH!");
			}
			else 
			{
				showFightText = !showFightText;
				showFightTextTimer = 0;
			}
		}
		#endregion
	break;
	
	case BattleState.Intermission:
	break;
}

DrawHud;

draw_set_alpha(1);

if (global.CurrentInput == InputMethod.KeyboardMouse)
{
	draw_sprite_ext(spr_crosshair, image_index, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 2, 2, 0, image_blend, hudAlpha)
}