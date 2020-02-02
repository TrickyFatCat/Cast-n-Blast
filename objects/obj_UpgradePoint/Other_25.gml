event_inherited();

var _partName;

switch (partToUpgrade)
{
	case PartType.Legs:
		_partName = "Legs +1";
	break;
	
	case PartType.Case:
		_partName = "Case +1";
	break;
	
	case PartType.Weapon:
		_partName = "Weapon +1";
	break;
}

draw_text(x, y, _partName);
draw_text(x, y + 20, upgradeCost);