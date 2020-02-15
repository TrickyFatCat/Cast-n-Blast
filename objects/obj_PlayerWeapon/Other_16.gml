// Inherit the parent event
event_inherited();

if (isConsumingUltimate)
{
	with (owner)
	{
		DecreaseUltimateEnergy(other.shootAmmoCost);
	}
}