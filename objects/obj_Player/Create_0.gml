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
#macro ProcessAmmoRecovery	event_user(14)

//Set shadow
SetShadowParameters(true, 1.25);

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
defaultPullDistance = pullDistance;
pullVelocityMax = 10;
pullAcceleration = 0.4;
pickupList = ds_list_create();
sessionWeaponData = [];
var _arrayLength = array_length_1d(global.PlayerWeaponData);
for (var i = 0; i < _arrayLength; i++)
{
	sessionWeaponData[i] = ds_map_create();
	ds_map_copy(sessionWeaponData[i], global.PlayerWeaponData[i]);
}

sessionAmmoData = [];
var _arrayLength = array_length_1d(global.PlayerAmmoData);

for (var i = 0; i < _arrayLength; i++)
{
	sessionAmmoData[i] = ds_map_create();
	ds_map_copy(sessionAmmoData[i], global.PlayerAmmoData[i]);
}

// MainWeapon
weaponID = PlayerWeapon.FireBall;
mainWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(mainWeapon, weaponID);
mainWeapon.drawAlpha = 0;
ammoArrayLength = array_length_1d(sessionAmmoData);

// Reload time
isReloading = false;
reloadTimer = 0;
recoveryDelayTimer = 0;
recoveryDelayTime = SetTime(1);

// SecondaryWeapon
//secondaryWeaponID = PlayerWeapon.Icicles;
//secondaryWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
//SetPlayerWeapon(secondaryWeapon, secondaryWeaponID);

// UltimateWeapon
ultimateWeaponID = PlayerWeapon.UltimateGun;
ultimateWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(ultimateWeapon, ultimateWeaponID);
ultimateWeapon.isConsumingUltimate = true;

// Shield
maxShieldPoints = 25;
defaultMaxShieldPoints = maxShieldPoints;
shieldPoints = maxShieldPoints;
shieldFactor = 0.9;
defaultShieldFactor = shieldFactor;

// Dash
deafaultDashVelocity = dashVelocity;
maxDashCharge = 2;
defaultMaxDashCharge = maxDashCharge;
dashCharge = maxDashCharge;
dashCooldownTime = SetTime(2.5);
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
ultimatePoints = 0;
maxUltimatePoints = 150;
defaultMaxUltimatePoints = maxUltimatePoints;
ultimateDeactivaitionTime = 0.75;
ultimateDeactivationProgress = 0;
ultimateGainFactor = 1;
defaultUltimateGainFactor = ultimateGainFactor;

ultimateTimer = 0;