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

// HitPoints
draw_set_font(fnt_small);
var _borderColour = c_black;
var _x = 4;
var _y = guiHeight - 32;
var _scaleX = 200;
var _scaleY = 24;
var _value = round(global.Player.hitPoints);
var _maxValue = global.Player.maxHitPoints;

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, global.ResourceColours[ResourceType.HitPoints], _value, _maxValue, false);
draw_sprite_ext(spr_hitPoints, 0, _x + 12, _y + _scaleY / 2, 1, 1, 0, c_white, hudAlpha);
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// ShieldPoints
_y -= (_scaleY + 4);
_scaleX /= 2;
_value = global.Player.shieldPoints;
_maxValue = global.Player.maxShieldPoints;

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, c_black, global.ResourceColours[ResourceType.ShieldPoints], _value, _maxValue, false);
draw_sprite_ext(spr_shieldPoints, 0, _x + 12, _y + _scaleY / 2, 1, 1, 0, c_white, hudAlpha);
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, string(_value));

// UltimatePoints
_scaleX = 200;
_scaleY = 24;
_x = guiWidth / 2 - _scaleX / 2;
_y = guiHeight - 32;
var _value = global.Player.ultimatePoints;
var _maxValue = global.Player.maxUltimatePoints;
var _percent = CalculatePercent(_value, _maxValue, RoundType.Floor);
var _text;

if (_value < _maxValue)
{
	_text = _percent;
}
else
{
	_text = "Press 'Q' to unleash power";
}

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, _borderColour, global.WeaponColours[PlayerWeapon.UltimateGun], _value, _maxValue, false);
DrawTextOutline(_x + _scaleX / 2, _y + _scaleY / 2, c_black, c_white, _text);

// Dash
_y -= _scaleY + 4;
var _dashCharge = global.Player.dashCharge;
var _maxDashCharge = global.Player.maxDashCharge;
_scaleX /= _maxDashCharge;
_scaleX -= 4;

for (var i = 0; i < _maxDashCharge; i++)
{
	if (i > 0)
	{
		if (_maxDashCharge == 2)
		{
			var _offset = 8;
		}
		else if (_maxDashCharge == 3)
		{
			var _offset = 6;
		}
		_x += _scaleX + _offset;
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
	
	DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, _borderColour, global.ResourceColours[ResourceType.Dash], _value, _maxValue, false);
}

// Weapon
_scaleX = 200;
_x = guiWidth - _scaleX - 2;
_y = guiHeight - 32;
var _weaponId = global.Player.weaponID;
var _name = GetWeaponName(_weaponId);
var _nameColour = global.WeaponColours[_weaponId];

_value = GetWeaponAmmo(_weaponId);
_maxValue = GetWeaponMaxAmmo(_weaponId);

var _colour = c_white;
var _percent = CalculatePercent(_value, _maxValue, RoundType.Standard);

if (_percent <= 50 && _percent > 10)
{
	_colour = c_orange;
}
else if (_percent <= 10)
{
	_colour = c_red;
}

DrawProgressBar(_x, _y, _scaleX, _scaleY, hudAlpha, _borderColour, global.ResourceColours[ResourceType.ManaPoints], _value, _maxValue, false);
SetAlign(fa_left, fa_center);
DrawTextOutline(_x + 6, _y + _scaleY / 2, c_black, _colour, string(_value) + "/" + string(_maxValue));
SetAlign(fa_right, fa_center);
DrawTextOutline(_x + _scaleX - 6, _y + _scaleY / 2, c_black, _nameColour, string(_name));

// Draw Weapon Numbers
_y -= _scaleY + 4;
_scaleX /= array_length_1d(global.ActiveWeapons);
_scaleX = 32;
_x += _scaleX;
SetAlign(fa_center, fa_center);

for (var i = 0; i < 4; i++)
{
	var _weaponId = global.ActiveWeapons[i];
	var _ammo = GetWeaponAmmo(_weaponId);
	var _maxAmmo = GetWeaponMaxAmmo(_weaponId);
	
	if (i > 0)
	{
		_x += _scaleX + 24;
	}
	
	if (i = global.Player.weaponID)
	{
		_colour = _nameColour;
		_borderColour = c_gray;
	}
	else
	{
		_colour = c_ltgray;
		_borderColour = c_black;
	}
	
	var _scale = 32;
	DrawProgressBar(_x - _scaleX, _y, _scaleX, _scaleY, hudAlpha, _borderColour, c_dkgray, _ammo, _maxAmmo, false);
	DrawTextOutline(_x - _scaleX / 2, _y + _scaleY / 2, c_black, _colour, i + 1);
}

// Draw lowammo text
_x = device_mouse_x_to_gui(0)
_y = device_mouse_y_to_gui(0)

if (_percent <= 25)
{
	SetAlign(fa_center, fa_top);
	DrawTextOutline(_x, _y + 24, c_black, _nameColour, "Low " + string(_name) + " mana");
}

// Draw crosshair
if (global.CurrentInput == InputMethod.KeyboardMouse)
{
	draw_sprite_ext(spr_crosshair, image_index, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 2, 2, 0, image_blend, hudAlpha)
}  