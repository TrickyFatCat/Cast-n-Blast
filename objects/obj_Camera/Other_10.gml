/// @description FollowObjectHandler

var _targetExists = instance_exists(cameraFollowTarget);
		
if (_targetExists)
{
	targetX = cameraFollowTarget.x;
	targetY = cameraFollowTarget.y;
		
	CalculateCameraDelayMovement();
}