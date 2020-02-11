
switch (other.tileType)
{
	case TileType.DamageDealer:
		if (!isInvulnerable && other.isActive)
		{
			DealDamageToPlayer(other.damage);
			CheckPlayerHP;
		}
	break;
	
	case TileType.SpeedDebuffer:
		if (currentState != PlayerState.Dash)
		{
			velocity *= other.speedFactor;
		}
	break;
	
	case TileType.EnergyDebuffer:
		canRestore = false;
		energyRestoreFactor = 0;
		energyPenaltyTime = SetTime(0);
	break;
}
