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
mainWeapon = noone;
ammoID = 0;
ammoCurrent = 0;
ammoCurrentMax = 0;

// Trancendence parameters
trancendenceProgress = 0;

// Collision
collisionEnable = true;