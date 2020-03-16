// Inherit the parent event
event_inherited();

draw_set_font(fnt_small);
SetAlign(fa_center, fa_center);
var _textScale = 2;
var _middleHeight = guiHeight * 0.5;

// Draw game over
DrawTextOutline(guiWidth * 0.5, guiHeight * 0.25, c_orange, c_orange, "GAME OVER", 6, 6);

// Draw round
DrawTextOutline(guiWidth * 0.65, _middleHeight - 20, c_black, c_white, "BEST ROUND", _textScale, _textScale);
DrawTextOutline(guiWidth * 0.65, _middleHeight + 20, c_black, c_white, string(global.Round), _textScale, _textScale);

// Draw score
DrawTextOutline(guiWidth * 0.35, _middleHeight - 20, c_black, c_white, "SCORE", _textScale, _textScale);
DrawTextOutline(guiWidth * 0.35, _middleHeight + 20, c_black, c_white, string(global.Score), _textScale, _textScale);