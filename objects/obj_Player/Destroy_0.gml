// Inherit the parent event
event_inherited();

ds_list_destroy(pickupList);
instance_destroy(activeWeapon);
global.Player = noone;