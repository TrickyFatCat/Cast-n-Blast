/// @param x
/// @param y
/// @param object
/// @param damage
/// @param radius

var _x = argument0;
var _y = argument1;
var _explosionObject = argument2;
var _damage = argument3;
var _radius = argument4;

var _explosion = instance_create_layer(_x, _y, layer, _explosionObject);

_explosion.explosionRadius = _radius;
_explosion.damage = _damage;

return _explosion;