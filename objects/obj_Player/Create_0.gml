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

//Set shadow
var _shadowScale = 1;
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
previousState = currentState;
sprite_index = spriteIdle;

// PickUp magnet paramentrs
pullDistance = 64;
pullVelocityMax = 8;
pullAcceleration = 0.25;
pickupList = ds_list_create();

// Set player weapon
var _lastIndex = array_length_1d(global.PlayerWeaponData) - 1;
weaponID = irandom_range(0, _lastIndex);
activeWeapon = instance_create_layer(x, y, layer, obj_PlayerWeapon);
SetPlayerWeapon(activeWeapon, weaponID);

// Set player weapon ammo
SetAmmoParameters(activeWeapon.ammoID, global.PlayerAmmoData);

// Wrap
spawnX = 0;
spawnY = 0;

// Scrap
global.Scrap = 0;

enum PartType
{
	Legs,
	Case,
	Weapon
}

// Legs
var _partType = PartType.Legs;
var _partLevel = 0;
legsLevel = GetPartLevel(_partType, _partLevel);
legsHitPoints = GetPartMaxHp(_partType, _partLevel);
legsMaxHitPoints = GetPartMaxHp(_partType, _partLevel);
legsRepairCost = GetPartRepairCost(_partType, _partLevel);
legsFactor = GetPartEffectivness(_partType, _partLevel);

// Case
var _partType = PartType.Case;
var _partLevel = 0;
caseLevel = GetPartLevel(_partType, _partLevel);
caseHitPoints = GetPartMaxHp(_partType, _partLevel);
caseMaxHitPoints = GetPartMaxHp(_partType, _partLevel);
caseRepairCost = GetPartRepairCost(_partType, _partLevel);
caseFactor = GetPartEffectivness(_partType, _partLevel);

// Case
var _partType = PartType.Weapon;
var _partLevel = 0;
weaponLevel = GetPartLevel(_partType, _partLevel);
weaponHitPoints = GetPartMaxHp(_partType, _partLevel);
weaponMaxHitPoints = GetPartMaxHp(_partType, _partLevel);
weaponRepairCost = GetPartRepairCost(_partType, _partLevel);
weaponFactor = GetPartEffectivness(_partType, _partLevel);

UpdateMaxHitPoints();

// Energy
maxEnergy = 100;
defaultMaxEnergy = maxEnergy;
energy = 1;
energyRestoreRate = 10;
energyRestoreFactor = 2;
energyDefaultRestoreRate = energyRestoreRate;
energyRestoreTimer = 0;

allHitpoints = [];
allHitpoints[0] = legsHitPoints;
allHitpoints[1] = caseHitPoints;
allHitpoints[2] = weaponHitPoints;

canRestore = true;
energyPenaltyTime = SetTime(4);
energyPenaltyTimer = 0;

ammoCurrent = energy;
ammoCurrentMax = maxEnergy;
ds_map_replace(global.PlayerAmmoData[activeWeapon.ammoID],"ammoCurrent",energy);
ds_map_replace(global.PlayerAmmoData[activeWeapon.ammoID],"ammoCurrentMax",maxEnergy);

// Shield
shieldIsActive = false;

// Dash
deafaultDashVelocity = dashVelocity;
dashCost = 25;
defaultDashCost = dashCost;