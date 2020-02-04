event_inherited();

isEnoughScrap = global.Scrap >= upgradeCost;

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
			
			if (_nextLevel == legsMaxLevel && !isMaxed)
			{
				isMaxed = true;
			}
		break;
		
		case PartType.Case:
			var _nextLevel = caseLevel + 1;
			
			if (_nextLevel <= caseMaxLevel)
			{
				other.upgradeCost = GetPartUpgradeCost(PartType.Case, _nextLevel);
			}
			
			if (_nextLevel == caseMaxLevel && !isMaxed)
			{
				isMaxed = true;
			}
		break
		break;
		
		case PartType.Weapon:
			var _nextLevel =  weaponLevel + 1;
			
			if (_nextLevel <= weaponMaxLevel)
			{
				other.upgradeCost = GetPartUpgradeCost(PartType.Weapon, _nextLevel);
			}
			
			if (_nextLevel == weaponMaxLevel && !isMaxed)
			{
				isMaxed = true;
			}
		break;
	}
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