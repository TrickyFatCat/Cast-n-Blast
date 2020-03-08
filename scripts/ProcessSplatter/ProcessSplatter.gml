MoveObject(false);

velocity = CalculateDeceleratedVelocity(direction, velocity, groundFriction);

CheckBouncingCollision(obj_Wall);

if (isBounced)
{
	directionCurrent = point_direction(0, 0, velocityX, velocityY);
	isBounced = !isBounced;
}

if (velocity <= 0)
{
	instance_destroy();
}

smearTimer += global.TimeFactor;

var _checkTimer = CheckTimer(smearTimer, smearTime);

if (_checkTimer)
{
	smearTimer = 0;
	var _smear = instance_create_layer(x, y, layer, vfx_Smear);
	_smear.sprite_index = smearSprite;
}