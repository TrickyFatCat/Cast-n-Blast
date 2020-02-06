event_inherited();

var _partName;
var _upgradeText;
var _nextLevel;
var _maxedText = "Fully upgraded";
switch (partToUpgrade)
{
	case PartType.Legs:
		if (!isMaxed)
		{
			_nextLevel = string(global.Player.legsLevel + 1);
			_partName = "Legs Mark " + _nextLevel;
		}
		else
		{
			_partName = _maxedText;
		}
	break;
	
	case PartType.Case:
		if (!isMaxed)
		{
			_nextLevel = string(global.Player.caseLevel + 1);
			_partName = "Case Mark " + _nextLevel;
		}
		else
		{
			_partName = _maxedText;
		}
	break;
	
	case PartType.Weapon:
		if (!isMaxed)
		{
			_nextLevel = string(global.Player.caseLevel + 1);
			_partName = "Weapon Mark " + _nextLevel;
		}
		else
		{
			_partName = _maxedText;
		}
	break;
}

if (!isMaxed)
{
	_upgradeText = "Scrap: " + string(upgradeCost);
}

SetAlign(fa_center, fa_center);
draw_set_font(fnt_verySmall);
DrawTextOutline(x, y - 32, c_black,c_white, _partName);
if (!isMaxed)
{
	SetAlign(fa_center, fa_top);
	DrawTextOutline(x, y + 4, c_black,c_white, _upgradeText);
}

if (showHint && !isMaxed)
{
	var _text;
	var _colour;
	
	if (isEnoughScrap)
	{
		_text = "Press E to upgrade";
		_colour = c_white;
	}
	else
	{
		_text = "Not enough scrap";
		_colour = c_red;
	}
	
	SetAlign(fa_center, fa_top);
	DrawTextOutline(x, y + 34, c_black, _colour, _text);
}