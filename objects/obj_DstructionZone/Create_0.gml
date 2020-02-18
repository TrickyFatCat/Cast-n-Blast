// Inherit the parent event
event_inherited();

currentState = TileState.Deactivation;

drawScaleX = 0;
drawScaleY = 704;
image_xscale = 0;
image_yscale = drawScaleY
drawAlpha = 0;
drawColour = c_gray;
borderScaleX = drawScaleY;

actionRate = 20;
actionDelayTime = SetTime(1/actionRate);
actionDelayTimer = actionDelayTime;
isActive = false;
damage = 2;

stateSwitchTime = 0.75;
stateSwitchProgress = 0;

activeTime = SetTime(30);
activeTimer = 0;

sys_BattleController.destructionTile = id;

instance_deactivate_object(id);