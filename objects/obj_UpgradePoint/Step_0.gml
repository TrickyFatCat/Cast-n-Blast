with (global.Player)
{
	switch (other.partToUpgrade)
	{
		case PartType.Legs:
			var _nextLevel = legsLevel + 1;
			
			if (_nextLevel <= legsMaxLevel)
			{
				other.upgradeCost = GetPartUpgradeCost(PartType.Legs, _nextLevel);
			}
		break;
		
		case PartType.Case:
			var _nextLevel = caseLevel + 1;
			
			if (_nextLevel <= caseMaxLevel)
			{
				other.upgradeCost = GetPartUpgradeCost(PartType.Case, _nextLevel);
			}
		break;
		
		case PartType.Weapon:
			var _nextLevel =  weaponLevel + 1;
			
			if (_nextLevel <= weaponMaxLevel)
			{
				other.upgradeCost = GetPartUpgradeCost(PartType.Weapon, _nextLevel);
			}
		break;
	}
}