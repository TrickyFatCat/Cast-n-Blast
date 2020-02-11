activeTiles = ds_list_create();
tilesListSize = ds_list_size(activeTiles);

permanentTiles = ds_list_create();
temporaryTiles = ds_list_create(); 

isActive = false;
switchingTilesTime = SetTime(10);
switchingTilesTimer = switchingTilesTime;
tileActiveTime = SetTime(10);

permanentTilesNumber = 20;
temporaryTilesNumber = 20;

temporaryTileType = TileType.DamageDealer;