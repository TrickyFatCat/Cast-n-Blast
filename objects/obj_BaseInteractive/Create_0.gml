// Inherit the parent event
event_inherited();

#macro InteractionAction event_user(0)

if (!ds_exists(global.InteractiveObjects, ds_type_list))
{
	global.InteractiveObjects = ds_list_create();
}
ds_list_add(global.InteractiveObjects, id);
instance_deactivate_object(id);

showHint = false;
playerIsIn = false;
triggerColour = c_gray;

SetShadowParameters(true, 2);

triggerVisualiser = instance_create_layer(x, y, layer, obj_TriggerVisualiser);

with (triggerVisualiser)
{
	scaleX = 64;
	scaleY = 64;
	triggerColour = other.triggerColour;
}
instance_deactivate_object(triggerVisualiser);

image_speed = 0;