/// @description FlashPowerController

// Parameters
var _flashPowerDrop = 0.05;

// Decrese flash
if flashPower > 0
{
	flashPower = ApproachTimeFactor(flashPower, 0, _flashPowerDrop);
}