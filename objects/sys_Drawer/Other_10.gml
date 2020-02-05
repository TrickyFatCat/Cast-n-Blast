/// @description DrawFloorObjectsController

with (obj_Mine)
{
	switch currentState
	{
		case DropableState.Activation:
			draw_set_color(c_gray);
			var _timeFactor = (activationTimer / activationTime);
			draw_circle(x, y, effectRadius * _timeFactor, true);
		break;
	
		case DropableState.Idle:
			draw_set_color(c_red);
			draw_circle(x, y, effectRadius, true);
			draw_set_alpha(0.25);
			var _timeFactor = (lifespanTimer / lifespanTime);
			draw_circle(x, y, effectRadius * _timeFactor, false);
		break;
	}

	draw_set_alpha(1);
}

with (obj_Floor)
{
	DrawSprite;
}