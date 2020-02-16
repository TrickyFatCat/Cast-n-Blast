/// @description RespondOnPickupCollision

//Parameters
var _flashColour = c_green;
var _flashPower = 2;

//Sequence
EnableFlash(_flashColour, _flashPower);
IncreaseUltimatePoints(other.ultimateNumber + ultimateGainFactor);
instance_destroy(other);