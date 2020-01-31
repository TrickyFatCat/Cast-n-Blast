/// @description DrawSortableObjectsController

var _listSize = ds_list_size(drawListSortable);

for (var i = 0; i < _listSize; i++)
{
	var _object = drawListSortable[| i];
	with (_object)
	{
		DrawSprite;
	}
}