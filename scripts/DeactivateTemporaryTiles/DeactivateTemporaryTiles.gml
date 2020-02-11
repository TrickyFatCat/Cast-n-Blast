with (obj_TilesController)
{
	var _listSize = ds_list_size(temporaryTiles);
	
	for (var i = 0; i < _listSize; i++)
	{
		var _tile = temporaryTiles[| i];
		_tile.activeStateTimer = activeStateTime;
	}
}