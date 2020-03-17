/// @description Insert description here

// Inherit the parent event
event_inherited();

// Menu parameters
menuTargetX = guiMarginX;

// Main Page Items
enum FinishMenuItem
{
	Quit,
	Layout,
	Fullscreen,
	Restart
}

menuItem[FinishMenuItem.Restart] = "Restart";
menuItem[FinishMenuItem.Fullscreen] = "Fullscreen";
menuItem[FinishMenuItem.Layout] = "Layout";
menuItem[FinishMenuItem.Quit] = "Quit";

menuItemsCount = array_length_1d(menuItem);

menuActiveItem = 3;
fullScreenItemIndex = FinishMenuItem.Fullscreen;
layoutItemIndex = FinishMenuItem.Layout;
logoAlpha = 0;

global.DifficultyLevel = 0;

SetCameraMode(CameraMode.MoveToTarget, 0, 0);