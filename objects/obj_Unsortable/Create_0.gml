event_inherited();

/// @description Adding a unsortable object to a draw list.
ds_list_add(sys_Drawer.drawListUnsortable, id);

// Parameters
enum DrawPosition
{
	OnFloor,
	OnAll
}

currentDrawPosition = DrawPosition.OnAll;