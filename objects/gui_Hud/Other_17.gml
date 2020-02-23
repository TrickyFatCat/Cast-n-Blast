var _timeLeft = (sys_BattleController.roundTime - global.PlayTime) / 60;

// Draw timer
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.65, 20, c_black, c_white, "TIME LEFT");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.65, 40, c_black, c_white, string(_timeLeft));

// Draw score
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.35, 20, c_black, c_white, "SCORE");
SetAlign(fa_center, fa_center);
DrawTextOutline(guiWidth * 0.35, 40, c_black, c_white, string(global.Score));

// Show info texts
var _x = guiWidth / 2;
var _y = guiHeight * 0.25;

var _enemyNumber = global.TotalEnemies;

if (global.BattleState == BattleState.RoundEnd)
{
	DrawTiltedText(fnt_medium, _x, 0, _y, 2, c_maroon, c_red, "Kill remaining enemies");
}

if (global.BattleState = BattleState.Intermission)
{
	var _timeLeft = round((sys_BattleController.battlePauseTime - sys_BattleController.battlePauseTimer) / 60);
	DrawTiltedText(fnt_medium, _x, 0, _y, 2, c_maroon, c_red, "Intermission ends in " + string(_timeLeft));
}

// Show random perk
if (showRandomPerk)
{
	var _perkId = sys_BattleController.randomPerk;
	var _perkName = GenerateName(_perkId, false);
	DrawTiltedText(fnt_medium, _x, 0, _y, 2, c_maroon, c_red, "Perk '" + _perkName + "' was chosen");
}

// HUD origin values
var _borderColour = c_black;
var _originScaleX = 300;
var _originScaleY = 28;
var _originX = (guiWidth * 0.5) - (_originScaleX / 2);
var _originY = guiHeight * 0.95;

// Ultimate
var _x = _originX;
var _y = _originY;
var _scaleX = _originScaleX;
var _scaleY = _originScaleY;
draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
var _value = global.Player.ultimatePoints;
var _maxValue = global.Player.maxUltimatePoints;
var _percent = floor(100 * (_value / _maxValue));
var _text;

if (_value < _maxValue)
{
	_text = _percent;
}
else
{
	_text = "Press 'Q' to unleash power";
}

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, ultimatePointsColour, _value, _maxValue, false);
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, _text);

// HitPoints
_y = _y - _scaleY + 4;
_scaleX /= 2;
_value = round(global.Player.hitPoints);
var _maxValue = global.Player.maxHitPoints;
var _percent = round(100 * (_value / _maxValue));

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, hitPointsColour, _value, _maxValue, false);
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// Energy
_x += _scaleX;
_value = global.Player.shieldPoints;

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, shieldPointsColour, _value, global.Player.maxShieldPoints, false);
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// Dash
_y = _y - _scaleY + 4;
var _dashCharge = global.Player.dashCharge;
var _maxDashCharge = global.Player.maxDashCharge;
_scaleX *= 2;
var _x = (guiWidth * 0.5) - (_scaleX / 2);
_scaleX /= _maxDashCharge;
_value = 1;
var _maxValue = 1;

for (var i = 0; i < _maxDashCharge; i++)
{
	if (i > 0)
	{
		_x += _scaleX;
	}
	
	if (i < _dashCharge)
	{
		_value = 1;
		_maxValue = 1;
	}
	else if (i > _dashCharge)
	{
		_value = 0;
		_maxValue = 1;
	}
	else if (i == _dashCharge)
	{
		_value = global.Player.dashCooldownTimer;
		_maxValue = global.Player.dashCooldownTime;
	}
	
	DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, c_teal, _value, _maxValue, false);
}

// Weapon
_x = _originX;
_y = _y - _scaleY + 4;
_scaleX = _originScaleX;

switch (global.Player.weaponID)
{
	case PlayerWeapon.FireBall:
		var _name = "Fireball";
	break;
	
	case PlayerWeapon.Icicles:
		var _name = "Icicles";
	break;
	
	case PlayerWeapon.Meteor:
		var _name = "Meteor";
	break;
	
	case PlayerWeapon.ArcaneSpear:
		var _name = "Arcane spear";
	break;
}

DrawTextOutline(_x + _scaleX / 4, _y + _scaleY / 2, c_black, c_white, _name);

if (!global.Player.isReloading)
{
	if (global.Player.ammo != 0)
	{
		var _text = string(global.Player.ammo) + " / " + string(global.Player.maxAmmo);
	}
	else
	{
		var _text = "Press R to reload";
	}
	
	DrawTextOutline(_x + (_scaleX / 4) * 3, _y + _scaleY / 2, c_black, c_white, _text);
}
else
{
	_value = global.Player.reloadTimer;
	_maxValue = global.Player.reloadTime;
	DrawProgressBar(_x + _scaleX / 2, _y, _scaleX / 2, _scaleY, hudAlpha, c_black, c_orange, _value, _maxValue, true);
	DrawTextOutline(_x + (_scaleX / 4) * 3, _y + _scaleY / 2, c_black, c_white, "RELOADING");
}