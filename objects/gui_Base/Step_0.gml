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
				
				if (playUiSound)
				{
					PlaySound(sfx_ui_changeposition);
				}
			}
	
			if (sys_GameManager.keyMenuDown)
			{
				menuActiveItem--;
		
				if (menuActiveItem < 0)
				{
					menuActiveItem = menuItemsCount - 1;
				}
				
				if (playUiSound)
				{
					PlaySound(sfx_ui_changeposition);
				}
			}
	
			if (sys_GameManager.keyMenuAccept)
			{
				menuCurrentAction = menuActiveItem;
				
				if (playUiSound)
				{
					PlaySound(sfx_ui_action);
				}
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