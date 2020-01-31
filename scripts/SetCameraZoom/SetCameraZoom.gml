/// @description SetCameraZoom

/// @param newZoom

var _zoom = argument0;

with (global.Camera)
{
	cameraZoom = clamp(_zoom, 0.1, cameraZoomMax);
	camera_set_view_size(mainCamera, global.IdealWidth / cameraZoom, global.IdealHeight / cameraZoom);
}