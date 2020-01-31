/// @description ApplyCameraShake

if (isShackingCamera)
{
	shotShakeFactorCurrent = min(shotShakeFactorCurrent + shotShakeFactor, 1);
	var _shakeValueCurrent = shakeValue * shotShakeFactorCurrent * chargeShakeFactor;
	ApplyShakeToCamera(angularShakeEnabled, _shakeValueCurrent);
}