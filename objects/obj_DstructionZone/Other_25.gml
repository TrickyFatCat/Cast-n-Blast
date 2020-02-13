if (visible)
{
	DrawSlicedSprite(spr_triggerBorder, 0, x, y, borderScaleX, drawScaleY, drawColour, drawAlpha);
	draw_sprite_ext(sprite_index, 0, x, y, drawScaleX, drawScaleY, 0, drawColour, drawAlpha);
}