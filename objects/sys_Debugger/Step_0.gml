// Set interface resolutionZoom
var _zoomSpeed = 0.01;
var _zoomIn = keyboard_check(vk_right);
var _zoomOut = keyboard_check(vk_left);

interfaceZoom += _zoomIn * _zoomSpeed;
interfaceZoom -= _zoomOut * _zoomSpeed;
interfaceZoom = clamp(interfaceZoom, 0.1, 5);

display_set_gui_size(global.IdealWidth * interfaceZoom, global.IdealHeight * interfaceZoom);

// Set view resolutionZoom
var _zoomSpeed = 0.01;
var _zoomIn = keyboard_check(vk_up);
var _zoomOut = keyboard_check(vk_down);

viewZoom += _zoomIn * _zoomSpeed;
viewZoom -= _zoomOut * _zoomSpeed;
SetCameraZoom(viewZoom)


if (keyboard_check_pressed(vk_f1))
{
	SetCameraMode(CameraMode.FollowObject, obj_Player);
}

if (keyboard_check_pressed(vk_f2))
{
	SetCameraMode(CameraMode.FollowBorder)
}

if (keyboard_check_pressed(vk_f3))
{
	SetCameraMode(CameraMode.FollowPointPeek, obj_Player);
}

if (keyboard_check_pressed(vk_f4))
{
	SetCameraMode(CameraMode.FollowDrag)
}

if (keyboard_check_pressed(vk_f5))
{
	SetCameraMode(CameraMode.MoveToTarget, 1024, 400)
}

if (keyboard_check_pressed(vk_f6))
{
	SetCameraMode(CameraMode.MoveToFollowObject, obj_Player)
}