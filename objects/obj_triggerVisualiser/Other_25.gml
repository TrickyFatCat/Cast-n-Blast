var _x = x - (scaleX / 2);
var _y = y - (scaleY / 2);

if (visible)
{
	DrawSlicedSprite(spr_triggerBorder, 0, _x, _y, scaleX, scaleY, triggerColour, 1);
	DrawSlicedSprite(spr_triggerFill, 0, _x, _y, scaleX, scaleY, triggerColour, 1);
}