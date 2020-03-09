event_inherited();

var _header = "Round starter";

SetAlign(fa_center, fa_center);
draw_set_font(fnt_small);
DrawTextOutline(x, y - 32, c_black,c_white, _header);

if (showHint)
{
	var _text = "Press E to start";
	var _colour = c_white;
	SetAlign(fa_center, fa_top);
	DrawTextOutline(x, y + 34, c_black, _colour, _text);
}