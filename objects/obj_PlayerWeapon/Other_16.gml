// Inherit the parent event
event_inherited();

if (isConsumingEnergy)
{
	with (owner)
	{
		DecreaseEnergy(other.shootAmmoCost);
	}
}
else if (isConsumingUltimate)
{
	with (owner)
	{
		DecreaseUltimateEnergy(other.shootAmmoCost);
	}
}