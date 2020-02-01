/// @description RespondOnHitscanCollision

//Parameters
var _flashColour = c_red;
var _flashPower = 1;

//Sequence
if (!isInvulnerable) && (other.dealingDamage)
{
	DealDamage(other.damage);
	EnableFlash(_flashColour, _flashPower);
	ChekPlayerHP;
}