/// @description Delete from draw list

switch (sortingType)
{
	case SortingType.Sortable:
		var _index = ds_list_find_index(sys_Drawer.drawListSortable, id);
		ds_list_delete(sys_Drawer.drawListSortable, _index);
	break;
	
	case SortingType.UnsortableFloor:
	case SortingType.UnsortableAir:
		var _index = ds_list_find_index(sys_Drawer.drawListUnsortable, id);
		ds_list_delete(sys_Drawer.drawListUnsortable, _index);
	break;
}