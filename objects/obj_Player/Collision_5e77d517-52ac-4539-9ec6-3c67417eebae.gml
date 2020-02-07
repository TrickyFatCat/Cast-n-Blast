/// @description RespondOnPickupCollision

//Parameters
var _flashColour = c_green;
var _flashPower = 2;

//Sequence
EnableFlash(_flashColour, _flashPower);

IncreaseUltimateEnergy(other.ultimateNumber);

instance_destroy(other);