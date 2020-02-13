/// @description ObjectsDrawSequence

if (instance_exists(obj_Base))
{
	DrawFloorEffects;
	
	DrawFloorObjects;
	
	DrawUnsortable(SortingType.UnsortableFloor);

	DrawShadow;

	DrawSortableObjects;
	
	DrawFlash;
	
	DrawUnsortable(SortingType.UnsortableAir);
}