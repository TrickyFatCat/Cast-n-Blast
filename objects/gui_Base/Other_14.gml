/// @description InterfaceStepController

// Item ease in
menuX = TweenWeighted(menuX, menuTargetX, menuAppearTime);
	
// Menu controls
if (menuIsActive)
{
	if (sys_GameManager.keyMenuUp)
	{
		menuActiveItem++;
		
		if (menuActiveItem >= menuItemsCount)
		{
			menuActiveItem = 0;
		}
	}
	
	if (sys_GameManager.keyMenuDown)
	{
		menuActiveItem--;
		
		if (menuActiveItem < 0)
		{
			menuActiveItem = menuItemsCount - 1;
		}
	}
	
	if (sys_GameManager.keyMenuAccept)
	{
		menuCurrentAction = menuActiveItem;
	}
}