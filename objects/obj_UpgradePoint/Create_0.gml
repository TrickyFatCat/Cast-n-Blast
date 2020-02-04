// Inherit the parent event
event_inherited();

upgradeCost = 0;
isMaxed = false;
isEnoughScrap = false;
triggerColour = c_gray;

triggerVisuliser = instance_create_layer(x, y, layer, obj_triggerVisualiser)
with (triggerVisuliser)
{
	scaleX = 64;
	scaleY = 64;
	triggerColour = other.triggerColour;
}
ds_list_add(global.InteractiveObjects, triggerVisuliser);
instance_deactivate_object(triggerVisuliser);