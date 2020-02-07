// Inherit the parent event
event_inherited();
#macro playerX global.Player.x
#macro playerY global.Player.y

SetCameraMode(CameraMode.FollowPointPeek, obj_Player);

//User events
#macro RespondToControls	event_user(0)
#macro MovePlayer			event_user(1)
#macro ChangeSprite			event_user(2)
#macro PullPickups			event_user(3)
#macro RotateWeapon			event_user(4)
#macro ShootWeapon		    event_user(5)
#macro ChekPlayerHP		    event_user(6)
#macro ExecutePlayerDeath	event_user(7)
#macro ProcessSpawn			event_user(8)
#macro ProcessDeath			event_user(9)
#macro ProcessUltimate		event_user(10)

//Set shadow
var _shadowScale = 1;
SetShadowParameters(true, _shadowScale);

//Movement parameters
directionX = 0;
directionY = 0;
currentScaleX = 1;
currentScaleY = currentScaleX;
scaleSign = 0;

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

// PickUp magnet paramentrs
pullDistance = 64;
pullVelocityMax = 8;
pullAcceleration = 0.25;
pickupList = ds_list_create();

// Set player weapon
var _lastIndex = array_length_1d(global.PlayerWeaponData) - 1;
weaponID = PlayerWeapon.PlasmaGun;
activeWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(activeWeapon, weaponID);
activeWeapon.drawAlpha = 0;

secondaryWeaponID = PlayerWeapon.ShotGun;
secondaryWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(secondaryWeapon, secondaryWeaponID);

ultimateWeaponID = PlayerWeapon.UltimateGun;
ultimateWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(ultimateWeapon, ultimateWeaponID);
ultimateWeapon.isConsumingEnergy = false;
ultimateWeapon.isConsumingUltimate = true;

// Set player weapon ammo
//SetAmmoParameters(activeWeapon.ammoID, global.PlayerAmmoData);

// Wrap
spawnX = 0;
spawnY = 0;

// Scrap
global.Scrap = 9000;

enum PartType
{
	Legs,
	Case,
	Weapon
}

// Legs
legsLevel = 0;
legsMaxLevel = GetPartMaxLevel(PartType.Legs);
SetLegs(legsLevel);

// Case
caseLevel = 0;
caseMaxLevel = GetPartMaxLevel(PartType.Case);
SetCase(caseLevel);

// Case
weaponLevel = 0;
weaponMaxLevel = GetPartMaxLevel(PartType.Weapon);
SetWeapon(weaponLevel);

UpdateMaxHitPoints();
// Energy
maxEnergy = 100;
defaultMaxEnergy = maxEnergy;
energy = 1;
energyRestoreRate = 12;
energyRestoreFactor = 1;
energyDefaultRestoreRate = energyRestoreRate;
energyRestoreTimer = 0;
isOverheated = false;
canRestore = true;
energyPenaltyTime = 0;
energyPenaltyTimer = 0;
shootPenaltyTime = 2;
defaultShootPenaltyTime = shootPenaltyTime;
overheatPenaltyTime = 4;
defaultOverheatPenaltyTime = overheatPenaltyTime;

// Shield
shieldIsActive = false;
damageReductionFactor = 1;
defaultDamageReductionFactor = damageReductionFactor;
shieldFactor = 0.5;
defaultShieldFactor = shieldFactor;

// Dash
deafaultDashVelocity = dashVelocity;
dashCost = 25;
defaultDashCost = dashCost;

// Weapon affects
defaultRateOfFire = activeWeapon.rateOfFireCurrent;
secondaryDefaultRateOfFire = secondaryWeapon.rateOfFireCurrent;
secondaryDefaultSpreadAlgle = secondaryWeapon.spreadAngleCurrent;

defaultMaxVelocity = maxVelocity;

shadowAlpha = 0;

// Ultimate
enum UltimateState
{
	Idle,
	Activation,
	Process,
	Deactivation
}

ultimateState = UltimateState.Idle;
ultimateEnergy = 100;
ultimateMaxEnergy = 100;
ultimateDeactivaitionTime = 0.75;
ultimateDeactivationProgress = 0;