/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (currentState = EnemyState.Trancendence)
{
	draw_set_color(c_red);
	draw_circle(x, y, explosionRadius, true);
	draw_set_color(c_white);
}