/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with (mainWeapon)
{
	if (currentCastState == CastState.Process)
	{
		var _x = x;
		var _y = y - offsetY - z;
		
		for (var i = 0; i < bulletNumber; i++)
		{
			var _index = round(bulletNumber / 2) - i;
			CalculateBulletDirection(_index);
			var _scaleX = SortHitscanCollisions(bulletSpawnDirection, collisionTargets);
			var _impactX = _x + lengthdir_x(_scaleX - 16, bulletSpawnDirection);
			var _impactY = _y + lengthdir_y(_scaleX - 16, bulletSpawnDirection);
			var _impactRotation = random(360);
			draw_sprite_ext(spr_laser, image_index, _x, _y, _scaleX - 16, 2, bulletSpawnDirection, c_red, lasersightAlpha);
			draw_sprite_ext(spr_laserImpact, image_index, _impactX, _impactY, 1, 1, _impactRotation, c_red, lasersightAlpha);
		}
	}
}