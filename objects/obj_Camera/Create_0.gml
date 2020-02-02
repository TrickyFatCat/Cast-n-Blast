/// @description Camera parameters

// Main settings
global.Camera = id;

// Macroses
#macro mainCamera		view_camera[0]
#macro cameraPositionX	camera_get_view_x(mainCamera)
#macro cameraPositionY	camera_get_view_y(mainCamera)
#macro cameraWidth		camera_get_view_width(mainCamera)
#macro cameraHeight		camera_get_view_height(mainCamera)

// User events
#macro ExecuteFollowObject			event_user(0)
#macro ExecuteFollowBorder			event_user(1)
#macro ExecuteFollowPointPeek		event_user(2)
#macro ExecuteFollowDrag			event_user(3)
#macro ExecuteMoveToTarget			event_user(4)
#macro ExecuteMoveToFollowObject	event_user(5)
#macro ExecuteMoveWithGamepad		event_user(6)
#macro ExecuteMoveWithKeyboard		event_user(7)
#macro ClampCameraPosition			event_user(8)
#macro ExecuteCameraShake			event_user(9)

// Transform
cameraX = x;
cameraY = y;

cameraOriginX = cameraWidth * 0.5;
cameraOriginY = cameraHeight * 0.5;

// Cameramodes
enum CameraMode
{
	FollowObject,
	FollowBorder,
	FollowPointPeek,
	FollowDrag,
	MoveToTarget,
	MoveToFollowObject
}

cameraMode = CameraMode.MoveToTarget;
clampToBorders = false;

// Follow parameters
cameraFollowTarget = noone;
targetX = 0;
targetY = 0;
isSmooth = true;

mousePreviousX = -1;
mousePreviousY = -1;

cameraButtonMoveSpeed = 5; // Only for gamepad and keyboard controls
cameraDragSpeed = 0.5; // Only for CameraMode.FollowDrag
cameraSpeed = 0.1;

// Camera shake parameters
cameraShakeValue = 0;
angularShakeEnabled = false; // Enables angular shaking

// Zoom parameters
cameraZoom = 0.65;
cameraZoomMax = 4;