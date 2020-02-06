
switch currentState
{
	case MineState.Activation:
		draw_set_color(c_gray);
		var _timeFactor = (activationTimer / activationTime);
		draw_circle(x, y, effectRadius * _timeFactor, true);
	break;
	
	case MineState.Idle:
	case MineState.Destruction:
		draw_set_color(c_red);
		draw_circle(x, y, effectRadius, true);
		draw_set_alpha(0.25);
		var _timeFactor = (lifespanTimer / lifespanTime);
		draw_circle(x, y, effectRadius * _timeFactor, false);
	break;
}

draw_set_alpha(1);

if visible
{
	draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, drawColour, drawAlpha);
}