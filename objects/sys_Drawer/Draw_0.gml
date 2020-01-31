/// @description ObjectsDrawSequence

if (instance_exists(obj_Base))
{
	DrawFloorEffects;
	
	DrawFloorObjects;
	
	DrawUnsortable(DrawPosition.OnFloor);

	DrawShadow;

	DrawSortableObjects;
	
	DrawFlash;
	
	DrawUnsortable(DrawPosition.OnAll);
}