/// @description CameraShaker

// Private parameters
var _cameraShakePower = 5;
var _cameraShakeDrop = 0.1;
var _cameraAngularShakePower = 0.5;

// Shake range calculations
var _shakeRange = power(cameraShakeValue, 2) * _cameraShakePower;

// Add _shakeRange to camera position
cameraX += random_range(-_shakeRange, _shakeRange);
cameraY += random_range(-_shakeRange, _shakeRange);

// Chanege view angle to shake camera angle
if angularShakeEnabled
{
	camera_set_view_angle(mainCamera, random_range(-_shakeRange, _shakeRange) * _cameraAngularShakePower);
}

// Decrease shake value
if cameraShakeValue > 0
{
	cameraShakeValue = max(cameraShakeValue - _cameraShakeDrop, 0);
}