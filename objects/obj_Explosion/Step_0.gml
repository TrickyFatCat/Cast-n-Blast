
if (dealingDamage && array_length_1d(targets) > 0)
{
	if (collision_circle(x, y, explosionRadius, obj_Entity, true, true)) //Check if there any pickup
	{
		//Create and fill pickups
		var _targetsList = ds_list_create();
		for (var i = 0; i < array_length_1d(targets); i++)
		{
			collision_circle_list(x, y, explosionRadius, targets[i], true, true, _targetsList, true);
		}
	
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
							
							case obj_Mine:
								instance_destroy();
							break;
						}
						
						var _parent = object_get_parent(object_index);
						
						switch (_parent)
						{
							case obj_Enemy:
								DealDamage(other.damage);
							break;
							case obj_Mine:
								instance_destroy();
							break;
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