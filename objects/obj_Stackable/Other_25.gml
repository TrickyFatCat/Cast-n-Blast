for (var i=0; i<image_number; i++)
{
	var _step = 22.5
	var _angle = round(angle / _step) * _step
	
	draw_sprite_ext(sprite_index, i, x, y - (i / 2) - z, drawScaleX, drawScaleY, _angle, drawColour, drawAlpha);
}