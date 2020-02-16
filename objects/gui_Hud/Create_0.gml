/// @description Insert description here

// Inherit the parent event
event_inherited();

#macro DrawHud event_user(7)
#macro DrawDashHud event_user(8)

// States
enum HUDState
{
	Active,
	PauseIn,
	Pause,
	PauseOut
}

hudCurrentState = HUDState.Active;

// Pause Menu Items
menuY = guiHeight - guiMarginY;
menuTargetX = menuFoldedX;
menuIsActive = false;

// Main Page Items
enum PauseMenuItem
{
	Quit,
	Fullscreen,
	Return
}

menuItem[PauseMenuItem.Return] = "Return";
menuItem[PauseMenuItem.Fullscreen] = "Fullscreen";
menuItem[PauseMenuItem.Quit] = "Quit";

menuItemsCount = array_length_1d(menuItem);

menuActiveItem = 2;
fullScreenItemIndex = PauseMenuItem.Fullscreen;

hudAlpha = 1;

showStartBattleText = false;
startBattleTextTimer = 0;

showFightText = false;
showFightTextTimer = 0;

showRandomPerkTime = SetTime(2);
showRandomPerkTimer = 0;
showRandomPerk = false;

hitPointsColour = make_color_rgb(71, 111, 0);
shieldPointsColour = make_color_rgb(2, 79, 97);
ultimatePointsColour = make_color_rgb(156, 11, 0);