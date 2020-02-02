/// @param damage

var _damage = argument0;

var _randomPart;
var _targetPart;

if (hitPoints > 0)
{
	do
	{
		_randomPart = irandom_range(1, 3);
		switch _randomPart
		{
			case 1:
				_targetPart = legsHitPoints;
			break;
		
			case 2:
				_targetPart = caseHitPoints;
			break;
		
			case 3:
				_targetPart = weaponHitPoints;
			break;
		}
	}
	until _targetPart > 0;


	switch _randomPart
	{
		case 1:
			legsHitPoints = Approach(legsHitPoints, 0, _damage);
		break;
		
		case 2:
			caseHitPoints = Approach(caseHitPoints, 0, _damage);
		break;
		
		case 3:
			weaponHitPoints = Approach(weaponHitPoints, 0, _damage);
		break;
	}
}