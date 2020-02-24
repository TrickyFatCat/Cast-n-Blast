/// @param trailObject
/// @param lifeTime
/// @param spawnOffset
/// @param syncSprite
/// @param syncDrawAngle
/// @param syncDrawColour
/// @param decreaseSize

var _trailObject = argument0;
var _lifeTime = argument1;
var _spawnOffset = argument2;
var _syncSprite = argument3;
var _syncDrawAngle = argument4;
var _syncDrawColour = argument5;
var _decreaseSize = argument6;

if (!GameIsPaused())
{
	var _offsetX = lengthdir_x(_spawnOffset, directionCurrent);
	var _offsetY = lengthdir_y(_spawnOffset, directionCurrent);
	var _x = xprevious - _offsetX;
	var _y = yprevious - _offsetY;

	var _dashEffect = instance_create_layer(_x, _y, layer, _trailObject);
	
	if (_syncSprite)
	{
		_dashEffect.sprite_index = sprite_index;
		_dashEffect.image_index = image_index;
	}
	
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
}