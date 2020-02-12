switch (tileType)
{
	case TileType.DamageDealer:
		activeColour = c_red;
	break;
	
	case TileType.SpeedDebuffer:
		activeColour = c_blue;
	break;
	
	case TileType.EnergyDebuffer:
		activeColour = c_aqua;
	break;
}

switch (currentState)
{
	case TileState.Inactive:
	break;
	
	case TileState.Reveal:
		ProcessTileReveal;
	break;
	
	case TileState.Activation:
		ProcessTileActivation;
	break;
	
	case TileState.Active:
		ProcessTileActiveState;
	break;
	
	case TileState.Deactivation:
		ProcessTileDeactivation;
	break;
}