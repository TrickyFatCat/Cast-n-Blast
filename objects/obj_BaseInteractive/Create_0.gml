// Inherit the parent event
event_inherited();

#macro InteractionAction event_user(0)

if (!ds_exists(global.InteractiveObjects, ds_type_list))
{
	global.InteractiveObjects = ds_list_create();
}
ds_list_add(global.InteractiveObjects, id);
//instance_deactivate_object(id);

showHint = false;
playerIsIn = false;