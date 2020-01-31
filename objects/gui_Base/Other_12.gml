/// @description TransitonOutSequence

// Parameters
var _transitionSpeedOut = max((1 - transitionFactor) / 10, 0.005);

// Sequence
if (transitionFactor != 1)
{
	transitionFactor = Approach(transitionFactor, 1, _transitionSpeedOut);
}
else
{
	var _sortableListEmpty = ds_list_empty(sys_Drawer.drawListSortable);
	var _unsortableListEmpty = ds_list_empty(sys_Drawer.drawListUnsortable);
	
	if (!_sortableListEmpty)
	{
		ds_list_clear(sys_Drawer.drawListSortable);
	}
	
	if (!_unsortableListEmpty)
	{
		ds_list_clear(sys_Drawer.drawListUnsortable);
	}
	
	room_goto(nextRoom);
}