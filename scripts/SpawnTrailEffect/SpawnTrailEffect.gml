/// @param trailObject
/// @param lifeTime
/// @param spawnOffset
/// @param syncDrawAngle
/// @param syncDrawColour
/// @param decreaseSize

var _trailObject = argument0;
var _lifeTime = argument1;
var _spawnOffset = argument2;
var _syncDrawAngle = argument3;
var _syncDrawColour = argument4;
var _decreaseSize = argument5;

var _offsetX = lengthdir_x(_spawnOffset, directionCurrent);
var _offsetY = lengthdir_y(_spawnOffset, directionCurrent);
var _x = x - _offsetX;
var _y = y - _offsetY;

var _dashEffect = instance_create_layer(_x, _y, layer, _trailObject);
_dashEffect.sprite_index = sprite_index;
_dashEffect.image_index = image_index;
_dashEffect.lifeTime = _lifeTime;
_dashEffect.initialScaleX = drawScaleX;
_dashEffect.initialScaleY = drawScaleY; 
_dashEffect.drawScaleX = drawScaleX;
_dashEffect.drawScaleY = drawScaleY;

if (_decreaseSize)
{
	_dashEffect.decreaseSize = _decreaseSize;
}

if (_syncDrawAngle)
{
	_dashEffect.drawAngle = drawAngle;
}

if (_syncDrawColour)
{
	_dashEffect.drawColour = drawColour;
}