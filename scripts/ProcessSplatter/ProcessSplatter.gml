MoveObject(false);

velocity = CalculateDeceleratedVelocity(direction, velocity, groundFriction);

CheckBouncingCollision(obj_Wall);

if (isBounced)
{
	directionCurrent = point_direction(0, 0, velocityX, velocityY);
	isBounced = !isBounced;
}

if (velocity <= 0)
{
	instance_destroy();
	var _surface = sys_Drawer.surfaceFloorEffects;

	if (surface_exists(_surface))
	{
		surface_set_target(_surface);
	
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction, c_gray, image_alpha);
	
		surface_reset_target();
	}
	else
	{
		_surface = surface_create(room_width, room_height);
	}
}

smearTimer += global.TimeFactor;

var _checkTimer = CheckTimer(smearTimer, smearTime);

if (_checkTimer)
{
	smearTimer = 0;
	var _smear = instance_create_layer(x, y, layer, vfx_Smear);
	_smear.sprite_index = smearSprite;
}