// Inherit the parent event
event_inherited();

#macro playerX global.Player.x
#macro playerY global.Player.y

//User events
#macro RespondToControls	event_user(0)
#macro MovePlayer			event_user(1)
#macro ChangeSprite			event_user(2)
#macro PullPickups			event_user(3)
#macro RotateWeapon			event_user(4)
#macro ShootWeapon		    event_user(5)
#macro ChekPlayerHP		    event_user(6)
#macro ExecutePlayerDeath	event_user(8)

//Set shadow
var _shadowScale = 2;
SetShadowParameters(true, _shadowScale);

//Movement parameters
directionX = 0;
directionY = 0;

//Player states
enum PlayerState
{
	Spawn,
	Idle,
	Run,
	Jump,
	Dash,
	Transcendence,
	Death
}

currentState = PlayerState.Idle;
sprite_index = spriteIdle;

// PickUp magnet paramentrs
pullDistance = 500;
pickupList = ds_list_create();

// Set player weapon
var _lastIndex = array_length_1d(global.PlayerWeaponData) - 1;
weaponID = irandom_range(0, _lastIndex);
activeWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(activeWeapon, weaponID);

// Set player weapon ammo
SetAmmoParameters(activeWeapon.ammoID, global.PlayerAmmoData);