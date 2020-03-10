/// @description Gridcreation

//Cells parameters
var _cell = 8
global.PathCellWidth = _cell;
global.PathCellHeight = _cell;

//Cells number calculatuons
var _cellsNumberHorizontal = 86;
var _cellsNumberVertical = 86;

//Create grid
global.PathGrid = mp_grid_create(24, 40, _cellsNumberHorizontal, _cellsNumberVertical, _cell, _cell);

//Add obstacles
mp_grid_add_instances(global.PathGrid, obj_Wall, true);
