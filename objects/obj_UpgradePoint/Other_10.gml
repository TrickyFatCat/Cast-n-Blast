var _cost = upgradeCost;

with (global.Player)
{
	if (global.Scrap >= other.upgradeCost)
	{
		switch (other.partToUpgrade)
		{
			case PartType.Legs:
				if (legsLevel < legsMaxLevel)
				{
					legsLevel += 1;
					SetLegs(legsLevel);
					DecreaseScrap(other.upgradeCost);
				}
			break;
		
			case PartType.Case:
				if (caseLevel < caseMaxLevel)
				{
					caseLevel += 1;
					SetCase(caseLevel);
					DecreaseScrap(other.upgradeCost);
				}
			break;
		
			case PartType.Weapon:
				if (weaponLevel < weaponMaxLevel)
				{
					weaponLevel += 1;
					SetWeapon(weaponLevel);
					DecreaseScrap(other.upgradeCost);
				}
			break;
		}
		
		UpdateMaxHitPoints();
	}
}