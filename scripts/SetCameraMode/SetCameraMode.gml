/// @description SetCameraMode

/// @param mode
/// @param followTarget/targetX
/// @param targetY

with (global.Camera)
{
	cameraMode = argument[0];
	
	switch (cameraMode)
	{
		case CameraMode.FollowObject:
		case CameraMode.MoveToFollowObject:
		case CameraMode.FollowPointPeek:
			cameraFollowTarget = argument[1];
		break;
		
		case CameraMode.MoveToTarget:
			targetX = argument[1];
			targetY = argument[2];
		break;
	}
}