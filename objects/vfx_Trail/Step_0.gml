var _alphaStep = CalculateStep(lifeTime);

if (lifeProgress != 1)
{
	lifeProgress = ApproachTimeFactor(lifeProgress, 1, _alphaStep);
	drawAlpha = LerpTimeFactor(1, 0, lifeProgress);
	
	if (decreaseSize)
	{
		drawScaleX = LerpTimeFactor(initialScaleX, 0, lifeProgress);
		drawScaleY = LerpTimeFactor(initialScaleY, 0, lifeProgress);
	}
}
else
{
	instance_destroy()
}