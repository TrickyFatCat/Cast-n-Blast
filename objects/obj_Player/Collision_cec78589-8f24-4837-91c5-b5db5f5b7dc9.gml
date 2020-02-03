/// @description RespondOnLaserCollision

//Parameters
var _flashColour = c_red;
var _flashPower = 1;

//Sequence
if (!isInvulnerable) && (other.dealingDamage)
{
	if (shieldIsActive)
	{
		DecreaseEnergy(round(other.damage * damageReductionFactor));
	}
	else
	{
		DealDamageToParts(other.damage);
	}
	EnableFlash(_flashColour, _flashPower);
	ChekPlayerHP;
}