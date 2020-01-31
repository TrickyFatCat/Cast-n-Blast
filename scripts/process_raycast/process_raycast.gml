enum cast
{
	instance, x, y
}

/// @param x
/// @param y
/// @param direction
/// @param object
/// @param precise
/// @param notme
/// @param [length]

var xx = argument[0]
var yy = argument[1]
var dir = argument[2]
var object = argument[3]
var precise = argument[4]
var notme = argument[5]

var length = 20000
if (argument_count>6)
{
	length = argument[6]
}

var len = length
var instance = noone

var xxx = xx + lengthdir_x(len, dir)
var yyy = yy + lengthdir_y(len, dir)


var vert = vec2(xxx,yyy)
instance = collision_line(xx, yy, xxx, yyy, object, precise, notme)
var col_instance = noone
var count = 0
if (instance!=noone)
{
	len*=0.5
	col_instance = instance
	while (len > 1)// && count<30)
	{
		count++
		xxx = xx + lengthdir_x(len, dir)
		yyy = yy + lengthdir_y(len, dir)
		instance = collision_line(xx, yy, xxx, yyy, object, precise, notme)
		if (instance!=noone)
		{
			len*=0.5
			col_instance = instance
		}
		else
		{
			len*=0.5
			xx = xxx
			yy = yyy
		}
	}
	vert = vec2(xx,yy)
}

var col_data
col_data[cast.x] = vert[v.x]
col_data[cast.y] = vert[v.y]
col_data[cast.instance] = col_instance

return col_data