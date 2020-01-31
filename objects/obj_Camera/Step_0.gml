/// @description Camera logic

cameraOriginX = cameraWidth * 0.5;
cameraOriginY = cameraHeight * 0.5;

cameraX = cameraPositionX;
cameraY = cameraPositionY;

switch (cameraMode)
{
	case CameraMode.FollowObject:
		ExecuteFollowObject;
	break;
	
	case CameraMode.FollowBorder:
		ExecuteFollowBorder;
	break;
	
	case CameraMode.FollowPointPeek:
		ExecuteFollowPointPeek;
	break;
	
	case CameraMode.FollowDrag:
		ExecuteFollowDrag;
	break;
	
	case CameraMode.MoveToTarget:
		ExecuteMoveToTarget;
	break;
	
	case CameraMode.MoveToFollowObject:
		ExecuteMoveToFollowObject;
	break;
}

ClampCameraPosition;

ExecuteCameraShake;

camera_set_view_pos(mainCamera, cameraX, cameraY);