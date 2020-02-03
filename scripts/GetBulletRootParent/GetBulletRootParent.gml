//Gets a root parent of a bullet. E.G. for a obj_projectile_player_FighterGun the root parent is obj_projectile, but usual parent is obj_projectile_player

var _parent = object_get_parent(bulletObject)
return object_get_parent(_parent);