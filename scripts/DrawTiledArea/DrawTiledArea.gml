/// @param sprite
/// @param subimg
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param offset_x
/// @param offset_y
/// @param color
/// @param alpha
/// @param outline

var sprite = argument0
var subimg = argument1
var x1 = argument2
var y1 = argument3
var x2 = argument4
var y2 = argument5
var offset_x = argument6
var offset_y = argument7
var color = argument8
var alpha = argument9

var sw = sprite_get_width(sprite)
var sh = sprite_get_height(sprite)
offset_x = offset_x mod sw
offset_y = offset_y mod sh

var xs = x1 + offset_x
var ys = y1 + offset_y

for (var xx = xs; xx <= x2-sw; xx+=sw)
{
	for (var yy = ys; yy <= y2-sh; yy+=sh)
	{
		draw_sprite_ext(sprite, subimg, xx, yy, 1, 1, 0, color, alpha)
	}
}

var width = x2-x1
var offset_x_r = (width - offset_x) mod sw

var height = y2-y1
var offset_y_b = (height - offset_y) mod sh

// left
for (var yy = ys; yy < y2-offset_y_b; yy+=sh)
{
	draw_sprite_part_ext(sprite, subimg, sw-offset_x, 0, offset_x, sh, x1, yy, 1, 1, color, alpha)
}

// right
for (var yy = ys; yy < y2-offset_y_b; yy+=sh)
{
	draw_sprite_part_ext(sprite, subimg, 0, 0, offset_x_r, sh, x2 - offset_x_r, yy, 1, 1, color, alpha)
}

// top
for (var xx = xs; xx < x2-offset_x_r; xx+=sw)
{
	draw_sprite_part_ext(sprite, subimg,  0, sh-offset_y, sw, offset_y, xx, y1, 1, 1, color, alpha)
}

// bottom
for (var xx = xs; xx < x2-offset_x_r; xx+=sw)
{
	draw_sprite_part_ext(sprite, subimg, 0, 0, sw, offset_y_b, xx, y2 - offset_y_b, 1, 1, color, alpha)
}

// left top
draw_sprite_part_ext(sprite, subimg, sw-offset_x, sh-offset_y, offset_x, offset_y, x1, y1, 1, 1, color, alpha)

// right top
draw_sprite_part_ext(sprite, subimg,  0, sh-offset_y, offset_x_r, offset_y, x2 - offset_x_r, y1, 1, 1, color, alpha)

// left bottom
draw_sprite_part_ext(sprite, subimg, sw-offset_x, 0, offset_x, offset_y_b, x1, y2 - offset_y_b, 1, 1, color, alpha)

// right bottom
draw_sprite_part_ext(sprite, subimg, 0, 0, offset_x_r, offset_y_b, x2 - offset_x_r, y2 - offset_y_b, 1, 1, color, alpha)
