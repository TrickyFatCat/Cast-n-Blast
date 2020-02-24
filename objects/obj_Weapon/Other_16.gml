/// @description RecalculateAmmo

if (ammoID != noone)
{	
	chargeCostThreshold = 0;
	
	switch (currentShootMode)
	{
		case ShootMode.Charge:
			chargeCostThreshold = max(initialAmmo - min(ceil(shootAmmoCost * chargeCostFactor), shootAmmoCost * chargeCostFactorMax), 0);
		break;
	}
	
	with (owner)
	{
		if (ammo != other.chargeCostThreshold)
		{
			DecreasePlayerAmmo(other.shootAmmoCost);
		}
	}
}