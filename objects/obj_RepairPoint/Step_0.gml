triggerColour = c_gray;

var _hpPercent

with (global.Player)
{
	switch (other.partToRepair)
	{
		case PartType.Legs:
			_hpPercent = legsHitPoints / legsMaxHitPoints;
			other.repairCost = round((1 - _hpPercent) * legsRepairCost);
		break;
		
		case PartType.Case:
			_hpPercent = caseHitPoints / caseMaxHitPoints;
			other.repairCost = round((1 - _hpPercent) * caseRepairCost);
		break;
		
		case PartType.Weapon:
			_hpPercent = weaponHitPoints / weaponMaxHitPoints;
			other.repairCost = round((1 - _hpPercent) * weaponRepairCost);
		break;
	}
}

if (global.Scrap >= repairCost)
{
	isEnoughScrap = true;
}
else
{
	isEnoughScrap = false;
}

if (_hpPercent == 1)
{
	isMaxed = true;
}
else
{
	isMaxed = false;
}

if (playerIsIn && !isEnoughScrap && !isMaxed)
{
	triggerColour = c_red;
}
else if (playerIsIn && isEnoughScrap && !isMaxed)
{
	triggerColour = c_green;
}
else if (!playerIsIn)
{
	triggerColour = c_gray;
}

triggerVisuliser.triggerColour = triggerColour;

playerIsIn = false;