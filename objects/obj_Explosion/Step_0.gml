
if (dealingDamage)
{
	if (collision_circle(x, y, explosionRadius, obj_Entity, true, true)) //Check if there any pickup
	{
		//Create and fill pickups
		var _targetsList = ds_list_create();
		collision_circle_list(x, y, explosionRadius, obj_Player, true, true, _targetsList, true);
		collision_circle_list(x, y, explosionRadius, obj_Enemy, true, true, _targetsList, true);
		collision_circle_list(x, y, explosionRadius, obj_Barrel, true, true, _targetsList, true);
	
		if (!ds_list_empty(_targetsList))
		{
			#region //Pickup checking
			for (var i = 0; i < ds_list_size(_targetsList); i++)
			{
				var _target = _targetsList[| i];
			
				//Pull Pickup
				with (_target)
				{
					if (!isInvulnerable)
					{	
						switch (object_index)
						{
							case obj_Player:
								if (shieldIsActive)
								{
									DecreaseEnergy(round(other.damage * damageReductionFactor));
								}
								else
								{
									DealDamageToParts(other.damage);
								}
								EnableFlash(c_red, 1);
								ApplyShakeToCamera(true, 1.25);
								//PlaySound(sfx_impact);
							break;
							
							case obj_Barrel:
								if (!timerIsTicking) && currentState == EnemyState.Action
								{
									DealDamage(other.damage);
									directionCurrent = point_direction(x, y, other.x, other.y) - 180;
								}
							break;
						}
						
						if (object_get_parent(object_index) == obj_Enemy)
						{
							DealDamage(other.damage);
						}
					}
				}
			}
			#endregion
		}
		else
		{
			ds_list_destroy(_targetsList);
		}
	}
	
	dealingDamage = false;
}