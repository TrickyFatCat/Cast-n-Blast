/// @description FlashPowerController

if (flashPower > 0 && !GameIsPaused())
{
	var _flashPowerDrop = 0.05;
	flashPower = ApproachTimeFactor(flashPower, 0, _flashPowerDrop);
}