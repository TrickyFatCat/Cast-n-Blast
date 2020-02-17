/// @description DeactivateTiles

if (permanentTilesEnabled)
{
	DeactivatePermanentTiles();
}

if (temporaryTilesEnabled)
{
	DeactivateTilesController();
	DeactivateTemporaryTiles();
}