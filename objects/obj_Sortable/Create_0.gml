event_inherited();

/// @description Adding a sortable object to a draw list.

switch (sortingType)
{
	case SortingType.Sortable:
		ds_list_add(sys_Drawer.drawListSortable, id);
	break;
	
	case SortingType.UnsortableFloor:
	case SortingType.UnsortableAir:
		ds_list_add(sys_Drawer.drawListUnsortable, id);
	break;
}		