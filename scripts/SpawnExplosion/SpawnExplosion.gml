/// @param object
/// @param damage
/// @param radius

var _explosionObject = argument0;
var _damage = argument1;
var _radius = argument2;

var _explosion = instance_create_layer(x, y, layer, _explosionObject);

_explosion.explosionRadius = _radius;
_explosion.damage = _damage;