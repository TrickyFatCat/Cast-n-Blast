var _timeLeft = (sys_BattleController.roundTime - global.PlayTime) / 60;

// Draw timer
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.65, 10, c_black, c_white, "TIME LEFT");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.65, 30, c_black, c_white, string(_timeLeft));

// Draw scrap
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.5, 10, c_black, c_white, "SCRAP");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.5, 30, c_black, c_white, string(global.Scrap));

// Draw score
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.35, 10, c_black, c_white, "SCORE");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.35, 30, c_black, c_white, string(global.Score));

if (_timeLeft == 0)
{
	DrawTiltedText(fnt_medium, guiWidth / 2, 0, guiHeight * 0.25, 2, c_maroon, c_red, "Kill remaining monsters");
}

if (global.BattleState = BattleState.Paused && _timeLeft != 0)
{
	var _timeLeft = round((sys_BattleController.battlePauseTime - sys_BattleController.battlePauseTimer) / 60);
	DrawTiltedText(fnt_medium, guiWidth / 2, 0, guiHeight * 0.25, 2, c_maroon, c_red, "Pause ends in " + string(_timeLeft));
}