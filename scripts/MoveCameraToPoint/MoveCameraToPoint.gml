/// @param moveSpeed

var _moveSpeed = argument0;

cameraX = lerp(cameraX, targetX - cameraOriginX, _moveSpeed);
cameraY = lerp(cameraY, targetY - cameraOriginY, _moveSpeed);