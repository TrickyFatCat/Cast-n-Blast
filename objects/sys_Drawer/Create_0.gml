// User events
#macro DrawFloorObjects			event_user(0)
#macro DrawFloorEffects			event_user(1)
#macro DrawShadow				event_user(2)
#macro DrawSortableObjects		event_user(3)
#macro DrawFlash				event_user(4)
#macro DrawSprite				event_user(15) // This is a special macro for a drawer. Each object with visuals has to have a User Event 15 with draw sequence

// Set drawListSortable
drawListSortable = ds_list_create();
drawListUnsortable = ds_list_create();

// Create shadow surface
surfaceShadowsWidth = room_width;
surfaceShadowsHeight = room_height;
surfaceShadows = surface_create(surfaceShadowsWidth, surfaceShadowsHeight);

// Create blood surface
surfaceFloorEffects= surface_create(room_width, room_height);

sortingUpdateTimer = 0;
sortingUpdateTime = SetTime(0.2);

enum SortingType
{
	Sortable,
	UnsortableFloor,
	UnsortableAir
}