event_inherited();

#macro ProcessTileReveal event_user(0)
#macro ProcessTileActivation event_user(1)
#macro ProcessTileActiveState event_user(2)
#macro ProcessTileDeactivation event_user(3)

scaleX = 64;
scaleY = 64;
drawAlpha = 0;
drawColour = c_gray;
tilesList = noone;

fillScaleX = 0;

actionRate = 5;
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
	SpeedDebuffer,
	EnergyDebuffer,
	CrowdController,
}

tileType = TileType.DamageDealer;