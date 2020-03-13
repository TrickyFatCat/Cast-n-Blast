// Inherit the parent event
event_inherited();

// Menu parameters
menuTargetX = guiMarginX;

// Main Page Items
enum MainMenuItem
{
	Quit,
	Layout,
	Fullscreen,
	Play
}

menuItem[MainMenuItem.Play] = "Play";
menuItem[MainMenuItem.Fullscreen] = "Fullscreen";
menuItem[MainMenuItem.Layout] = "Layout";
menuItem[MainMenuItem.Quit] = "Quit";

menuItemsCount = array_length_1d(menuItem);

menuActiveItem = 3;
fullScreenItemIndex = MainMenuItem.Fullscreen;
layoutItemIndex = MainMenuItem.Layout;