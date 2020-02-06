var _playerIsIn = collision_circle(x, y, effectRadius, obj_Player, true, true);
if (_playerIsIn && global.Player.currentState != PlayerState.Dash)
{
	instance_destroy();
}