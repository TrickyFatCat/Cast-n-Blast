/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

repairCost = 0;
triggerColour = c_gray;
isEnoughScrap = false;
isMaxed = true;

triggerVisuliser = instance_create_layer(x, y, layer, obj_triggerVisualiser)
with (triggerVisuliser)
{
	scaleX = 64;
	scaleY = 64;
	triggerColour = other.triggerColour;
}
ds_list_add(global.InteractiveObjects, triggerVisuliser);
instance_deactivate_object(triggerVisuliser);