/// @param currentDrawPosition

var _position = argument0;
var _listSize = ds_list_size(drawListUnsortable);

for (var i = 0; i < _listSize; i++)
{
	var _object = drawListUnsortable[| i];
	with (_object)
	{
		if (currentDrawPosition == _position)
		{
			DrawSprite;
		}
	}
}