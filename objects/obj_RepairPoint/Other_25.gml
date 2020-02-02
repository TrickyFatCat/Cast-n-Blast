/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _partName;

switch (partToRepair)
{
	case PartType.Legs:
		_partName = "Legs";
	break;
	
	case PartType.Case:
		_partName = "Case";
	break;
	
	case PartType.Weapon:
		_partName = "Weapon";
	break;
}

draw_text(x, y, _partName);
draw_text(x, y + 20, repairCost);