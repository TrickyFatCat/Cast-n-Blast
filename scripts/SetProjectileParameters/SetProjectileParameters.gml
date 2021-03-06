/// @param target

var _target = argument0;

var _velocityCurrent = projectileVelocityCurrent * chargeVelocityFactor;
var _velocityNoise = _velocityCurrent * projectileVelocityNoiseFactor;
var _velocityDelta = random_range(-_velocityNoise, _velocityNoise);

var _damage = round(damage * chargeDamageFactor);
var _heal = floor(heal * chargeHealFactor);
var _velocity = _velocityCurrent + _velocityDelta;
var _velocityMax = projectileVelocityMax * chargeVelocityFactor;
var _acceleration = projectileAcceleration * chargeVelocityFactor;

with (_target)
{
	//drawAngle = directionCurrent;
	damage = _damage;
	heal = _heal;
	isBounceable = other.projectileBounceEnable;
	velocityNoiseFactor = other.projectileVelocityNoiseFactor;
	velocity = _velocity;
	maxVelocity = _velocityMax;
	acceleration = _acceleration;
	groundFriction = other.projectileFriction;
	bounceFriction = other.projectileBounceFriction;
}