/// @param sprite
/// @param subimg
/// @param xx
/// @param yy
/// @param width
/// @param height
/// @param color
/// @param alpha

var sprite = argument0
var subimg = argument1
var xx = argument2
var yy = argument3
var width = argument4
var height = argument5
var color = argument6
var alpha = argument7

var slice_w = sprite_get_width(sprite)/3
var slice_h = sprite_get_height(sprite)/3;

// left top
draw_sprite_part_ext(sprite, subimg, 0, 0, slice_w, slice_h, xx, yy, 1, 1, color, alpha)
// left bottom
draw_sprite_part_ext(sprite, subimg, 0, slice_h*2, slice_w, slice_h, xx, yy + height - slice_h, 1, 1, color, alpha)
// right top
draw_sprite_part_ext(sprite, subimg, slice_w*2, 0, slice_w, slice_h, xx + width - slice_w, yy, 1, 1, color, alpha)
// right bottom
draw_sprite_part_ext(sprite, subimg, slice_w*2, slice_h*2, slice_w, slice_h, xx + width - slice_w, yy + height - slice_h, 1, 1, color, alpha)

var vert_scale = ((height/slice_h) - 2)
// left
draw_sprite_part_ext(sprite, subimg, 0, slice_h, slice_w, slice_h, xx, yy + slice_h, 1, vert_scale, color, alpha)
// right
draw_sprite_part_ext(sprite, subimg, slice_w*2, slice_h, slice_w, slice_h, xx + width - slice_w, yy + slice_h, 1, vert_scale, color, alpha)

var hor_scale = ((width/slice_w) - 2)
// top
draw_sprite_part_ext(sprite, subimg, slice_w, 0, slice_w, slice_h, xx + slice_w, yy, hor_scale, 1, color, alpha)
// bottom
draw_sprite_part_ext(sprite, subimg, slice_w, slice_h*2, slice_w, slice_h, xx + slice_w, yy + height - slice_h, hor_scale, 1, color, alpha)

//fill
draw_sprite_part_ext(sprite, subimg, slice_w, slice_h, slice_w, slice_h, xx+slice_w, yy+slice_h, hor_scale, vert_scale, color, alpha)