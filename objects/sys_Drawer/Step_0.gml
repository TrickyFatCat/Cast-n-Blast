/// @description DrawListController

sortingUpdateTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(sortingUpdateTimer, sortingUpdateTime)

if (_timeIsOver)
{
	if (instance_exists(obj_Base))
	{
		DrawListHandler(drawListSortable);
		DrawListHandler(drawListUnsortable);	
	}
	
	sortingUpdateTimer = 0;
}

if (surface_exists(surfaceShadows))
{
	SyncSurface(surfaceShadows);
}