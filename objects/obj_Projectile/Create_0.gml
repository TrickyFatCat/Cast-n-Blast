// Inherit the parent event
event_inherited();

// User events
#macro ChangeDirection event_user(0)

// Damage Parameters
damage = 0;

// Bouncing Parameters
isBounced = false;
bounceFriction = 0;
bouncedDirectionDelta = 20;

// Penentration
isPenentrating = false;

// Parameters
velocityNoiseFactor = 0;