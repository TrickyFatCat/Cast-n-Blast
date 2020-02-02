/// @description Insert description here

// Inherit the parent event
event_inherited();

// Menu parameters
menuTargetX = guiMarginX;

// Main Page Items
enum FinishMenuItem
{
	Quit,
	Fullscreen,
	Restart
}

menuItem[FinishMenuItem.Restart] = "Restart";
menuItem[FinishMenuItem.Fullscreen] = "Fullscreen";
menuItem[FinishMenuItem.Quit] = "Quit";

menuItemsCount = array_length_1d(menuItem);

menuActiveItem = 2;
fullScreenItemIndex = FinishMenuItem.Fullscreen;
logoAlpha = 1;

global.DifficultyLevel = 0;

SetCameraMode(CameraMode.MoveToTarget, 0, 0);