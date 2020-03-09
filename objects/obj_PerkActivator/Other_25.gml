event_inherited();
var _header;
var _description;
var _textScale = 0.5;

if (perkId != noone)
{
	_header = GenerateName(perkId, true);
	_description = GetPerkDescription(perkId);
}
else
{
	_header = "No available perks";
}

SetAlign(fa_center, fa_center);
draw_set_font(fnt_small);
DrawTextOutline(x, y - 32, c_black,c_white, _header, _textScale, _textScale);

if (perkId != noone)
{
	SetAlign(fa_center, fa_top);
	DrawTextOutline(x, y + 4, c_black,c_white, _description, _textScale, _textScale);
}

if (showHint && perkId != noone)
{
	var _text = "Press E to upgrade";
	var _colour = c_white;
	SetAlign(fa_center, fa_top);
	DrawTextOutline(x, y + 34, c_black, _colour, _text, _textScale, _textScale);
}