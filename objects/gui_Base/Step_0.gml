/// @description MainTransitionSequence

switch currentState
{
	case InterfaceState.TransitionIn:
		SetGameState(GameState.Transition);
		ExecuteTransitionInSequence;	
	break;
	
	case InterfaceState.GUI:
		transitionInTimer = 0;
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
		ExecuteGUIStateLogic;
	break;
	
	case InterfaceState.TransitionOut:
		transitionInTimer = 0;
		SetGameState(GameState.Transition);
		ExecuteTransitionOutSequence;
	break;
}