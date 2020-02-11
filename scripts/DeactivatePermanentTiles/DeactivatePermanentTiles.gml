with (obj_TilesController)
{
	var _listSize = ds_list_size(permanentTiles);
	
	for (var i = 0; i < _listSize; i++)
	{
		var _tile = permanentTiles[| i];
		
		with (_tile)
		{
			currentState = TileState.Deactivation;
			EnableFlash(c_yellow, 1);
			drawColour = c_gray;
		}
	}
	
	ds_list_clear(permanentTiles);
}