var _scaleX = 64;
var _scaleY = 64;
var _x = x - (_scaleX / 2);
var _y = y - (_scaleY / 2);

if (playerIsIn && !isEnoughScrap && !isMaxed)
{
	triggerColour = c_red;
}

DrawSlicedSprite(spr_triggerBorder, 0, _x, _y, _scaleX, _scaleY, triggerColour, 1);
DrawSlicedSprite(spr_triggerFill, 0, _x, _y, _scaleX, _scaleY, triggerColour, 1);

if visible
{
	draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, drawColour, drawAlpha);
}

var _partName;
var _upgradeText;
switch (partToUpgrade)
{
	case PartType.Legs:
		_partName = "Legs +1";
	break;
	
	case PartType.Case:
		_partName = "Case +1";
	break;
	
	case PartType.Weapon:
		_partName = "Weapon +1";
	break;
}

if (!isMaxed)
{
	_upgradeText = "Scrap: " + string(upgradeCost);
}
else
{
	_upgradeText = "Max level";
}

SetAlign(fa_center, fa_center);
draw_set_font(fnt_verySmall);
DrawTextOutline(x, y - 32, c_black,c_white, _partName);
SetAlign(fa_center, fa_top);
DrawTextOutline(x, y + 4, c_black,c_white, _upgradeText);

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