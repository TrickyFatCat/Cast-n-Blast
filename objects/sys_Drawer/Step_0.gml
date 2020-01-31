/// @description DrawListController

if (instance_exists(obj_Base))
{
	DrawListHandler(drawListSortable);
	DrawListHandler(drawListUnsortable);
	
}

if (surface_exists(surfaceShadows))
{
	SyncSurface(surfaceShadows);
}