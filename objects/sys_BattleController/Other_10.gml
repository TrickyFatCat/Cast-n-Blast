/// @description ActivateTiles

if (permanentTilesEnabled)
{
	ActivatePermanentTiles(TileType.SpeedDebuffer);
}

if (temporaryTilesEnabled)
{
	ActivateTilesController(TileType.DamageDealer);
}