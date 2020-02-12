/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with (activeWeapon)
{
	if (currentCastState == CastState.Process)
	{
		for (var i = 0; i < bulletNumber; i++)
		{
			var _index = round(bulletNumber / 2) - i;
			CalculateBulletDirection(_index);
			var _scaleX = SortHitscanCollisions(bulletSpawnDirection, collisionTargets);
			draw_sprite_ext(spr_laser, image_index, bulletSpawnPointX, bulletSpawnPointY, _scaleX, 5, bulletSpawnDirection, c_red, lasersightAlpha);
		}
	}
}