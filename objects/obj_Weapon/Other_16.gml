/// @description RecalculateAmmo

if (ammoID != noone)
{	
	with (owner)
	{
		if (ammo != 0)
		{
			DecreasePlayerAmmo(other.shootAmmoCost);
		}
	}
}