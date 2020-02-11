/// @param isTemporary
/// @param tileType

var _tileType = argument0;
var _isTemporary = argument1;

var _isEnough = false;
var _tilesToActivate = ds_list_create();
var _listSize = 0;
var _isAppropriate = false;
ds_list_shuffle(activeTiles);
var _tilesNumberSum = permanentTilesNumber + temporaryTilesNumber;

if (_tilesNumberSum > tilesListSize)
{
	var _permanentPercent = (permanentTilesNumber / tilesListSize) - 1;
	permanentTilesNumber = max(ceil(tilesListSize * _permanentPercent), 1);
	var _temporaryPercent = (temporaryTilesNumber / tilesListSize) - 1;
	temporaryTilesNumber = max(ceil(tilesListSize * _temporaryPercent), 1);
}

for (var i = 0; i < tilesListSize; i++)
{
	var _tile = activeTiles[| i];
		
	if (_tile.currentState == TileState.Inactive)
	{
		ds_list_add(_tilesToActivate, _tile);
		instance_activate_object(_tile);
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
	
	with (_tile)
	{
		tileType = _tileType;
		currentState = TileState.Reveal;
			
		if (_isTemporary)
		{
			isTemporary = true;
			activeStateTime = other.tileActiveTime;
			tilesList = other.temporaryTiles;
		}
		else
		{
			isTemporary = false;
		}
	}
}
		
switchingTilesTimer = 0;
ds_list_destroy(_tilesToActivate);