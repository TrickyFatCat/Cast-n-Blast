/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (isDisplayingRadius)
{
	draw_set_color(c_red);
	draw_circle(x, y, explosionRadius, true);
}