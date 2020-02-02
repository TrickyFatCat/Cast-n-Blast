with (global.Player)
{
	if (global.Scrap >= other.repairCost && other.repairCost > 0)
	{
		switch (other.partToRepair)
		{
			case PartType.Legs:
				legsHitPoints = legsMaxHitPoints;
				DecreaseScrap(other.repairCost);
			break;
		
			case PartType.Case:
				caseHitPoints = caseMaxHitPoints;
				DecreaseScrap(other.repairCost);
			break;
		
			case PartType.Weapon:
				weaponHitPoints = weaponMaxHitPoints;
				DecreaseScrap(other.repairCost);
			break;
		}
	}
}