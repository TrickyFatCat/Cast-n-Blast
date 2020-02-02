/// @description Insert description here

// Inherit the parent event
event_inherited();
explosionRadius = 64;
explosionDamage = 30;

explosionDelayTime = SetTime(0.5);
explosionDelayTimer = 0;
timerIsTicking = false;
spawnProgress = 0;
drawAlpha = 0;

velocity = 2;
groundFriction = 0.075;

currentState = EnemyState.Spawn;

idleTime = SetTime(0.4);
idleTimer = 0;