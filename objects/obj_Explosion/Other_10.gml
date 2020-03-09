/// @description ProcessExplosion

if (dealingDamage && !GameIsPaused())
{
	//Create and fill pickups
	var _targetsList = ds_list_create();
		
	if (isDamagingPlayer)
	{
		collision_circle_list(x, y, explosionRadius, global.Player, true, true, _targetsList, true);
	}
		
	if (isDamagingEnemies)
	{
		collision_circle_list(x, y, explosionRadius, obj_Enemy, true, true, _targetsList, true);
	}
	
	collision_circle_list(x, y, explosionRadius, obj_Barrel, true, true, _targetsList, true);
	collision_circle_list(x, y, explosionRadius, obj_Mine, true, true, _targetsList, true);
	collision_circle_list(x, y, explosionRadius, obj_Bomb, true, true, _targetsList, true);
	
	if (!ds_list_empty(_targetsList))
	{
		#region //DealingDamage
		for (var i = 0; i < ds_list_size(_targetsList); i++)
		{
			var _target = _targetsList[| i];
			with (_target)
			{
				if (!isInvulnerable)
				{	
					switch (object_index)
					{
						case obj_Player:
							DealDamageToPlayer(other.damage);
						break;
							
						case obj_Barrel:
							if (!timerIsTicking) && currentState == EnemyState.Action
							{
								DecreaseHitPoints(other.damage);
								directionCurrent = point_direction(x, y, other.x, other.y) - 180;
							}
						break;
						
						case obj_Bomb:
							DestroyBomb(_target);
						break;
					}
						
					var _parent = object_get_parent(object_index);
						
					switch (_parent)
					{
						case obj_Enemy:
							DecreaseHitPoints(other.damage);
						break;
							
						case obj_Mine:
							DestroyMine(_target);
						break;
					}
				}
			}
		}
		#endregion
	}
	
	ds_list_destroy(_targetsList);
	dealingDamage = false;
	if (isSpawningDust)
	{
		for (var i = 0; i < 40; i++)
		{
			var _direction = random(360);
			var _x = x + random_range(-explosionRadius, explosionRadius)
			var _y = y + random_range(-explosionRadius, explosionRadius);
			var _dust = SpawnDust(vfx_Dust, _x, _y - 1, c_red, false, _direction);
		}
	}
}