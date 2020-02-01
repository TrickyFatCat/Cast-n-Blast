var isInList = ds_list_find_index(sys_Drawer.drawListSortable, id);

if (!isInList)
{
/// @description Adding a sortable object to a draw list.
	ds_list_add(sys_Drawer.drawListSortable, id);
}