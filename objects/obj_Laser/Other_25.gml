if visible
{
	drawAlngle = directionCurrent;
	var _coreScale = drawScaleY * 0.45;
	var _startScale = drawScaleY * 0.14;
	var _startCoreScale = drawScaleY * 0.05;
	var _impactScale = drawScaleY * 0.3;
	var _impactCoreScale = drawScaleY * 0.2;
	var _impactAngle = random(360);
	var _positionX = x + lengthdir_x(drawScaleX, drawAngle);
	var _positionY = y + lengthdir_y(drawScaleX, drawAngle);
	draw_sprite_ext(spr_circle, image_index, x, y - z, _startScale, _startScale, drawAngle, drawColour, drawAlpha);
	draw_sprite_ext(spr_laserImpact, image_index, _positionX, _positionY - z, _impactScale, _impactScale, _impactAngle, drawColour, drawAlpha);
	draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, drawColour, drawAlpha);
	draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, _coreScale, drawAngle, c_white, drawAlpha);
	draw_sprite_ext(spr_circle, image_index, x, y - z, _startCoreScale, _startCoreScale, drawAlpha, c_white, drawAlpha);
	draw_sprite_ext(spr_laserImpact, image_index, _positionX, _positionY - z, _impactCoreScale, _impactCoreScale, _impactAngle, c_white, drawAlpha);
}