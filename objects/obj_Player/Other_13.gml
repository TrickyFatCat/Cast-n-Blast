/// @description PickupMagnetHandler

if (collision_circle(x, y, pullDistance, obj_Pickup, true, true)) //Check if there any pickup
{
	//Create and fill pickups
	pickupList = ds_list_create();
	collision_circle_list(x, y, pullDistance, obj_Pickup, true, true, pickupList, true);
	
	if (!ds_list_empty(pickupList))
	{
		#region //Pickup checking
		for (var i = 0; i < ds_list_size(pickupList); i++)
		{
			var _pickup = pickupList[| i];
			
			//Pull Pickup
			with (_pickup)
			{
				if ((isPullable) && currentState < PickupState.Pull)
				{
					target = other.id;
					currentState = PickupState.Pull;
				}
			}
		}
		#endregion
	}
	else
	{
		ds_list_destroy(pickupList);
	}
}