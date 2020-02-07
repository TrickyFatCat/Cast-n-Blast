var _timeLeft = (sys_BattleController.roundTime - global.PlayTime) / 60;

// Draw timer
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.65, 20, c_black, c_white, "TIME LEFT");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.65, 40, c_black, c_white, string(_timeLeft));

// Draw scrap
draw_set_font(fnt_medium);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.5, 40, c_black, c_white, "SCRAP");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.5, 80, c_black, c_white, string(global.Scrap));

// Draw score
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.35, 20, c_black, c_white, "SCORE");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.35, 40, c_black, c_white, string(global.Score));

var _enemyNumber = instance_number(obj_Enemy);

if (_timeLeft == 0 && _enemyNumber > 0)
{
	DrawTiltedText(fnt_medium, guiWidth / 2, 0, guiHeight * 0.25, 2, c_maroon, c_red, "Kill remaining monsters");
}

if (global.BattleState = BattleState.Intermission && _timeLeft != 0 && _enemyNumber == 0)
{
	var _timeLeft = round((sys_BattleController.battlePauseTime - sys_BattleController.battlePauseTimer) / 60);
	DrawTiltedText(fnt_medium, guiWidth / 2, 0, guiHeight * 0.25, 2, c_maroon, c_red, "Intermission ends in " + string(_timeLeft));
}

// Energy
var _borderColour = c_black;//make_color_rgb(54, 43, 31);
var _scaleX = 300;
var _scaleY = 28;
var _x = (guiWidth * 0.5) - (_scaleX / 2);
var _y = guiHeight * 0.95;
var _value = global.Player.energy;

if (!global.Player.isOverheated)
{
	DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, energyColour, _value, global.Player.maxEnergy, false);
}
else
{
	DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, overheatColour, global.Player.energyPenaltyTimer, global.Player.energyPenaltyTime, true);
}

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);

if (!global.Player.isOverheated)
{
	DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));
}
else
{
	DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_red, "OVERHEAT");
}

// Ultimate
_y = _y - _scaleY + 4;
_value = global.Player.ultimateEnergy;

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, ultimateColour, _value, global.Player.maxEnergy, false);
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// Legs
_scaleX = 96;
_x = guiWidth * 0.5 - 150;
_y = _y - _scaleY + 4;
_value = global.Player.legsHitPoints;

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, hitPointsColour, _value, global.Player.legsMaxHitPoints, false);

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(_x + _scaleX / 2, guiHeight * 0.845, c_black, c_white, "Legs");
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// Case
_x = guiWidth * 0.5 - 48;
_value = global.Player.caseHitPoints

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, hitPointsColour, _value, global.Player.caseMaxHitPoints, false);

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(_x + _scaleX / 2, guiHeight * 0.845, c_black, c_white, "Case");
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// Weapon
_x = guiWidth * 0.5 + 54;
_value = global.Player.weaponHitPoints

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, hitPointsColour, _value, global.Player.weaponMaxHitPoints, false);

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(_x + _scaleX / 2, guiHeight * 0.845, c_black, c_white, "Weapon");
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));