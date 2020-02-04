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
var _borderColour = make_color_rgb(54, 43, 31);
var _scaleX = 300;
var _scaleY = 32;
var _x = (guiWidth * 0.5) - (_scaleX / 2);
var _y = guiHeight * 0.93;

var _value = global.Player.energy;
var _maxValue = global.Player.maxEnergy;
var _valueFactor = _value / _maxValue;
var _fillScale = _scaleX * _valueFactor;

DrawSlicedSprite(spr_interfaceAlpha, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);
draw_sprite_ext(spr_interfaceEnergyFill, 0, _x, _y, _fillScale, 1, 0, c_white, hudAlpha);
DrawSlicedSprite(spr_interfaceBorder, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);

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

// Legs
var _scaleX = 96;
var _scaleY = 32;
var _x = guiWidth * 0.5 - 150;
var _y = guiHeight * 0.87;

var _value = global.Player.legsHitPoints;
var _maxValue = global.Player.legsMaxHitPoints;
var _valueFactor = _value / _maxValue;
var _fillScale = _scaleX * _valueFactor;

DrawSlicedSprite(spr_interfaceAlpha, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);
draw_sprite_ext(spr_interfaceHitPointsFill, 0, _x, _y, _fillScale, 1, 0, c_white, hudAlpha);
DrawSlicedSprite(spr_interfaceBorder, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(_x + _scaleX / 2, guiHeight * 0.845, c_black, c_white, "Legs +" + string(global.Player.legsLevel));
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// Case
var _scaleX = 96;
var _scaleY = 32;
var _x = guiWidth * 0.5 - 50;
var _y = guiHeight * 0.87;

var _value = global.Player.caseHitPoints;
var _maxValue = global.Player.caseMaxHitPoints;
var _valueFactor = _value / _maxValue;
var _fillScale = _scaleX * _valueFactor;

DrawSlicedSprite(spr_interfaceAlpha, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);
draw_sprite_ext(spr_interfaceHitPointsFill, 0, _x, _y, _fillScale, 1, 0, c_white, hudAlpha);
DrawSlicedSprite(spr_interfaceBorder, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(_x + _scaleX / 2, guiHeight * 0.845, c_black, c_white, "Case +" + string(global.Player.caseLevel));
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// Weapon
var _scaleX = 96;
var _scaleY = 32;
var _x = guiWidth * 0.5 + 50;
var _y = guiHeight * 0.87;

var _value = global.Player.weaponHitPoints;
var _maxValue = global.Player.weaponMaxHitPoints;
var _valueFactor = _value / _maxValue;
var _fillScale = _scaleX * _valueFactor;

DrawSlicedSprite(spr_interfaceAlpha, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);
draw_sprite_ext(spr_interfaceHitPointsFill, 0, _x, _y, _fillScale, 1, 0, c_white, hudAlpha);
DrawSlicedSprite(spr_interfaceBorder, 0, _x, _y, _scaleX, _scaleY, _borderColour, hudAlpha);

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(_x + _scaleX / 2, guiHeight * 0.845, c_black, c_white, "Weapon +" + string(global.Player.weaponLevel));
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));