MoveObject(false);

velocity = CalculateDeceleratedVelocity(direction, velocity, groundFriction);

if (velocity <= 0)
{
	instance_destroy()
}

smearTimer += global.TimeFactor;

var _checkTimer = CheckTimer(smearTimer, smearTime);

if (_checkTimer)
{
	smearTimer = 0;
	
	instance_create_layer(x, y, layer, smearObject);
}