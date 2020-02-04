event_inherited();

var _partName;
var _repairText;
switch (partToRepair)
{
	case PartType.Legs:
		_partName = "Legs repair";
	break;
	
	case PartType.Case:
		_partName = "Case repair";
	break;
	
	case PartType.Weapon:
		_partName = "Weapon repair";
	break;
}

if (!isMaxed)
{
	_repairText = "Scrap: " + string(repairCost);
}
else
{
	_repairText = "Not damaged";
}

SetAlign(fa_center, fa_center);
draw_set_font(fnt_verySmall);
DrawTextOutline(x, y - 32, c_black,c_white, _partName);
SetAlign(fa_center, fa_top);
DrawTextOutline(x, y + 4, c_black,c_white, _repairText);

if (showHint && !isMaxed)
{
	var _text;
	var _colour;
	
	if (isEnoughScrap)
	{
		_text = "Press E to repair";
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