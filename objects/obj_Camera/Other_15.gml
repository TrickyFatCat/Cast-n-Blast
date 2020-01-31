/// @description MoveToFollowObject
		
var _targetExists = instance_exists(cameraFollowTarget);
		
if (_targetExists)
{
	targetX = cameraFollowTarget.x;
	targetY = cameraFollowTarget.y;
		
	MoveCameraToPoint(cameraSpeed);
		
	var _distance = point_distance(cameraX, cameraY, targetX - cameraOriginX, targetY - cameraOriginY);
		
	if (_distance < 1)
	{
		cameraMode = CameraMode.FollowObject;
	}
}