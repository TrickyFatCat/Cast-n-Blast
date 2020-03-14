if visible
{
	var _x = x - 8;
	var _y = y - 11;
	var _scaleX = 0.25;
	var _scaleY = _scaleX;
	var _angle = random(360) * global.TimeFactor;
	draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, drawColour, drawAlpha);
	draw_sprite_ext(spr_bombflame, image_index, _x, _y - z, _scaleX, _scaleX, _angle, c_orange, drawAlpha);
}