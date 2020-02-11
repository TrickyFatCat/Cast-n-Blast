activeTiles = ds_list_create();

var _tiles = instance_number(obj_ActiveTile);

for (var i = 0; i < _tiles; i++)
{
	var _activeTile = instance_find(obj_ActiveTile, i);
	ds_list_add(activeTiles, _activeTile);
}

tilesListSize = ds_list_size(activeTiles);

permanentTiles = ds_list_create();
temporaryTiles = ds_list_create(); 

isActive = false;
switchingTilesTime = SetTime(10);
switchingTilesTimer = switchingTilesTime;
tileActiveTime = SetTime(9);

permanentTilesNumber = 10;
temporaryTilesNumber = 20;