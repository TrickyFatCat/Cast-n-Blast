if (visible)
{
	DrawSlicedSprite(spr_triggerBorder, 0, x, y, drawScaleX, drawScaleY, drawColour, drawAlpha);
	//draw_sprite_ext(spr_1pixA, 0, x, y, fillScaleX, drawScaleY, 0, drawColour, drawAlpha);
	
	var _imageIndex = 0;
	if (currentState != TileState.Reveal)
	{
		_imageIndex = round(LerpTimeFactor(0, 8, stateSwitchProgress));
	}
	DrawTiledArea(spr_tileFill, _imageIndex, x, y, x + drawScaleX, y + drawScaleY, 0, 0, drawColour, drawAlpha);
}