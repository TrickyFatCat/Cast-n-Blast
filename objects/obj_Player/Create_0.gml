// Inherit the parent event
event_inherited();
#macro playerX global.Player.x
#macro playerY global.Player.y

SetCameraMode(CameraMode.FollowPointPeek, obj_Player);
SetActivePerks();

//User events
#macro RespondToControls	event_user(0)
#macro MovePlayer			event_user(1)
#macro ChangeSprite			event_user(2)
#macro PullPickups			event_user(3)
#macro RotateWeapon			event_user(4)
#macro ShootWeapon		    event_user(5)
#macro CheckPlayerHP		event_user(6)
#macro ExecutePlayerDeath	event_user(7)
#macro ProcessSpawn			event_user(8)
#macro ProcessDeath			event_user(9)
#macro ProcessUltimate		event_user(10)
#macro ProcessDashRecovery	event_user(11)
#macro ProcessWeaponChange	event_user(12)
#macro ProcessWeaponReload	event_user(13)

//Set shadow
var _shadowScale = 1;
SetShadowParameters(true, _shadowScale);

//Movement parameters
directionX = 0;
directionY = 0;
currentScaleX = 1;
currentScaleY = currentScaleX;
scaleSign = 0;
defaultMaxVelocity = maxVelocity;
shadowAlpha = 0;

//Player states
enum PlayerState
{
	Inactive,
	Spawn,
	Idle,
	Run,
	Jump,
	Dash,
	Ultimate,
	Transcendence,
	Death
}

currentState = PlayerState.Inactive;
spawnTime = 0.5;
spawnProgress = 0;
drawAlpha = 0;
previousState = currentState;
targetScale = 2;
trancendenceTimer = 0;
hitPoints = maxHitPoints;
defaultMaxHitPoints = maxHitPoints;

// PickUp magnet paramentrs
pullDistance = 64;
pullVelocityMax = 8;
pullAcceleration = 0.25;
pickupList = ds_list_create();

sessionWeaponData = [];
var _arrayLength = array_length_1d(global.PlayerWeaponData);
for (var i = 0; i < _arrayLength; i++)
{
	array_copy(sessionWeaponData, 0, global.PlayerWeaponData, 0, _arrayLength);
}

// MainWeapon
weaponID = PlayerWeapon.PlasmaGun;
mainWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(mainWeapon, weaponID);
mainWeapon.drawAlpha = 0;

// Set player weapon ammo
SetAmmoParameters(mainWeapon.ammoID, global.PlayerAmmoData);

// Reload time
isReloading = false;
reloadTime = SetTime(mainWeapon.reloadTime);
reloadTimer = 0;

//// SecondaryWeapon
secondaryWeaponID = PlayerWeapon.Shotgun;
secondaryWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(secondaryWeapon, secondaryWeaponID);

// UltimateWeapon
ultimateWeaponID = PlayerWeapon.UltimateGun;
ultimateWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(ultimateWeapon, ultimateWeaponID);
ultimateWeapon.isConsumingUltimate = true;

// Shield
maxShieldPoints = 50;
defaultMaxShieldPoints = maxShieldPoints;
shieldPoints = maxShieldPoints;
shieldFactor = 0.8;
defaultShieldFactor = shieldFactor;

// Dash
deafaultDashVelocity = dashVelocity;
maxDashCharge = 2;
defaultMaxDashCharge = maxDashCharge;
dashCharge = maxDashCharge;
dashCooldownTime = SetTime(3);
dashCooldownTimer = 0;
defaultDashCooldownTime = dashCooldownTime;

// Ultimate
enum UltimateState
{
	Idle,
	Activation,
	Process,
	Deactivation
}

ultimateState = UltimateState.Idle;
ultimatePoints = 1000;
maxUltimatePoints = 1000;
defaultMaxUltimatePoints = maxUltimatePoints;
ultimateDeactivaitionTime = 0.75;
ultimateDeactivationProgress = 0;
ultimateGainFactor = 1;
defaultUltimateGainFactor = ultimateGainFactor;