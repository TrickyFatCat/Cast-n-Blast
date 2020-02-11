/// @param isTemporary

var _isTemporary = argument0;
var _isEnough = false;
var _tilesToActivate = ds_list_create();
var _listSize = 0;
ds_list_shuffle(activeTiles);
	
for (var i = 0; i < tilesListSize; i++)
{
	var _tile = activeTiles[| i];
		
	if (_tile.currentState == TileState.Inactive)
	{
		ds_list_add(_tilesToActivate, _tile);
		_listSize = ds_list_size(_tilesToActivate);
				
		if (_isTemporary)
		{
			ds_list_add(temporaryTiles, _tile);
			_isEnough = _listSize == temporaryTilesNumber;
		}
		else
		{
			ds_list_add(permanentTiles, _tile);
			_isEnough = _listSize == permanentTilesNumber;
		}
				
		if (_isEnough)
		{
			break;
		}
	}
}
		
for (var i = 0; i < _listSize; i++)
{
	var _tile = _tilesToActivate[| i];
	_tile.currentState = TileState.Reveal;
	_tile.actionIsDelayed = true;
			
	if (_isTemporary)
	{
		_tile.isTemporary = true;
		_tile.activeStateTime = tileActiveTime;
		_tile.temporaryTiles = temporaryTiles;
	}
	else
	{
		_tile.isTemporary = false;
	}
}
		
switchingTilesTimer = 0;
ds_list_destroy(_tilesToActivate);