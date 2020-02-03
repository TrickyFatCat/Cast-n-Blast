/// @description DrawTransitonScreen

switch currentState
{
	case InterfaceState.TransitionIn:
		DrawTransitionScreen;
	break;
	
	case InterfaceState.GUI:
		DrawMenuBackground;
		DrawInterface;
	break;
	
	case InterfaceState.TransitionOut:
		DrawTransitionScreen;
	break;
}

var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();

draw_line(_guiWidth * 0.25, 0, _guiWidth * 0.25, _guiHeight);
draw_line(0, _guiHeight * 0.25, _guiWidth, _guiHeight * 0.25);

draw_line(_guiWidth * 0.5, 0, _guiWidth * 0.5, _guiHeight);
draw_line(0, _guiHeight * 0.5, _guiWidth, _guiHeight * 0.5);

draw_line(_guiWidth * 0.75, 0, _guiWidth * 0.75, _guiHeight);
draw_line(0, _guiHeight * 0.75, _guiWidth, _guiHeight * 0.75);