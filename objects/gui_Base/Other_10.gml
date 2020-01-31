/// @description TransitionScreenHandler

// Parameters
var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();

// Sequense
draw_set_color(c_black);
draw_rectangle(0, 0, _guiWidth, _guiHeight * 0.5 * transitionFactor, false);
draw_rectangle(_guiWidth, _guiHeight - _guiHeight * 0.5 * transitionFactor, 0, _guiHeight, false);
draw_set_color(c_white);