// Inherit the parent event
event_inherited();

ds_list_destroy(pickupList);
instance_destroy(activeWeapon);
instance_destroy(secondaryWeapon);
instance_destroy(ultimateWeapon);
global.Player = noone;