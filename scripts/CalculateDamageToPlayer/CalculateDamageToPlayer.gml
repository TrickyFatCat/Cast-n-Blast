/// @param damage

var _damage = argument0;

if (shieldIsActive)
{
	DecreaseEnergy(round(_damage * damageReductionFactor));
	EnableFlash(c_blue, 1);
	//PlaySound(sfx_impact);
}
else if (hitPoints > 0)
{
	DealDamageToParts(_damage);
	EnableFlash(c_red, 1);
	ApplyShakeToCamera(true, 1.25);
	//PlaySound(sfx_impact);
}