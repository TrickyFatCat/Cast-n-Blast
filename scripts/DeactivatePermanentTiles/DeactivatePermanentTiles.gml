with (obj_TilesController)
{
	var _listSize = ds_list_size(permanentTiles);
	
	for (var i = 0; i < _listSize; i++)
	{
		var _tile = permanentTiles[| i];
		_tile.currentState = TileState.Deactivation;
		ds_list_delete(permanentTiles, i);
	}
}