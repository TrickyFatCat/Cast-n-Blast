event_inherited();

#macro ProcessTileReveal event_user(0)
#macro ProcessTileActivation event_user(1)
#macro ProcessTileActiveState event_user(2)
#macro ProcessTileDeactivation event_user(3)

scaleX = 64;
scaleY = 64;
drawAlpha = 0;
tilesList = noone;

fillScaleX = 0;

actionRate = 20;
actionDelayTime = SetTime(1/actionRate);
actionDelayTimer = actionDelayTime;
isActive = false;

enum TileState
{
	Inactive,
	Reveal,
	Activation,
	Active,
	Deactivation
}

currentState = TileState.Inactive;

stateSwitchTime = 0.75;
stateSwitchProgress = 0;

activeStateTime = SetTime(2);
activeStateTimer = 0;

enum TileType
{
	DamageDealer,
	SpeedDebuffer
}

tileType = TileType.DamageDealer;
damage = 2;
speedFactor = 0.75;

inactiveColour = c_gray;
activationColour = c_white;
drawColour = inactiveColour;
activeColour = c_teal;
maxFillOffset = 10;
fillOffset = 0;

with (obj_TilesController)
{
	ds_list_add(activeTiles, other.id);
	tilesListSize = ds_list_size(activeTiles);
}

instance_deactivate_object(id);