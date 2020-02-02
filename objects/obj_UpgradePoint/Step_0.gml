with (global.Player)
{
	switch (other.partToUpgrade)
	{
		case PartType.Legs:
			other.upgradeCost = legsUpgradeCost;
		break;
		
		case PartType.Case:
			other.upgradeCost = caseUpgradeCost;
		break;
		
		case PartType.Weapon:
			other.upgradeCost = weaponUpgradeCost;
		break;
	}
}