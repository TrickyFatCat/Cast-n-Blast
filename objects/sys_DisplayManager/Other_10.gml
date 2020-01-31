/// @description RresolutionController

global.CurrentWidth = global.IdealWidth * resolutionZoom;
global.CurrentHeight = global.IdealHeight * resolutionZoom;
surface_resize(application_surface, global.CurrentWidth, global.CurrentHeight);
window_set_size(global.CurrentWidth, global.CurrentHeight);
display_set_gui_size(global.IdealWidth * interfaceZoom, global.IdealHeight * interfaceZoom);
alarm[0] = 1;