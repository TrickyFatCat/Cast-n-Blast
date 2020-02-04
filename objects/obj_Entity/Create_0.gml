// Inherit the parent event
event_inherited();

//States
currentState = noone;

// Movement parameters
velocity = 0.0;
directionCurrent = 0;

// Health points parameters
hitPoints = maxHitPoints;
isInvulnerable = false;

// Weapon parameters
weaponID = 0;
activeWeapon = noone;
ammoID = 0;
ammoCurrent = 0;
ammoCurrentMax = 0;

// Trancendence parameters
trancendenceProgress = 0;

// Collision

collisionEnable = true;

var _tex = sprite_get_texture(sprite_index, 0);
texel_w = texture_get_texel_width(_tex);
texel_h = texture_get_texel_height(_tex);

shader = shd_Outline;

u_texel_size = shader_get_uniform(shader, "u_texel_size");