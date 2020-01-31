// User events
#macro DrawTransitionScreen			event_user(0)
#macro ExecuteTransitionInSequence	event_user(1)
#macro ExecuteTransitionOutSequence	event_user(2)
#macro DrawInterface				event_user(3)
#macro ExecuteGUIStateLogic			event_user(4)
#macro DrawMenuBackground			event_user(5)
#macro CheckButtonActions			event_user(6);

// Interface states
enum InterfaceState
{
	TransitionIn,
	GUI,
	TransitionOut
}

currentState = InterfaceState.TransitionIn;

// Transtion screen parameters
transitionFactor = 1;
transitionInTimer = 0;
transitionInTime = SetTime(1);

// Transform parameters
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMarginX = 32;
guiMarginY = 32;
guiFont = fnt_debug;

menuFoldedX = -200;
menuX = menuFoldedX;
menuY = guiHeight - guiMarginY;
menuTargetX = 0;


menuAppearTime = SetTime(0.10);
menuItemHeight = font_get_size(guiFont);
menuCurrentAction = noone;
menuIsActive = true;
menuBackGroundAlpha = 0;