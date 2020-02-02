with (global.Player)
{
	switch (other.partToRepair)
	{
		case PartType.Legs:
			var _hpPercent = legsHitPoints / legsMaxHitPoints;
			other.repairCost = round((1 - _hpPercent) * legsRepairCost);	
		break;
		
		case PartType.Case:
			var _hpPercent = caseHitPoints / caseMaxHitPoints;
			other.repairCost = round((1 - _hpPercent) * caseRepairCost);
		break;
		
		case PartType.Weapon:
			var _hpPercent = weaponHitPoints / weaponMaxHitPoints;
			other.repairCost = round((1 - _hpPercent) * weaponRepairCost);
		break;
	}
}