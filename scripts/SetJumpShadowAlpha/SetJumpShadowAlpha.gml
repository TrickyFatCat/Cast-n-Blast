if (z > 0 && !GameIsPaused())
{
	var _clampedZ = clamp(z, 0, shadowMaxZ);
	var _lerpAlpha = _clampedZ / shadowMaxZ;
	
	shadowAlpha = lerp(1, 0, _lerpAlpha);
}