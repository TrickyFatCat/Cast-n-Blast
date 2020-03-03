switch currentState
{
	case BombState.Activation:
		draw_set_color(c_gray);
		var _timeFactor = (activationTimer / activationTime);
		draw_circle(x, y, explosionRadius * _timeFactor, true);
	break;
	
	case BombState.Idle:
	case BombState.Destruction:
		draw_set_color(c_red);
		draw_circle(x, y, explosionRadius, true);
		draw_set_alpha(0.25);
		var _timeFactor = (lifespanTimer / lifespanTime);
		draw_circle(x, y, explosionRadius * _timeFactor, false);
	break;
}

draw_set_alpha(1);
event_inherited();