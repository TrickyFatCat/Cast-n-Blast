/// @description RecalculateAmmo

if (ammoID != noone)
{	
	var _shootCost = min(ceil(shootAmmoCost * chargeCostFactor), shootAmmoCost * chargeCostFactorMax);
	
	with (owner)
	{
		if (ammo != 0)
		{
			DecreasePlayerAmmo(_shootCost);
		}
	}
}