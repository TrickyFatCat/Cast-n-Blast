if (global.TimeFactor == 0)
{
	return;
}

var _number = instance_number(obj_EnemyRocket);

if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(obj_EnemyRocket, i);
		with (_effect)
		{
			ProcessSkullStep();
		}
	}
}

var _number = instance_number(obj_Bomb);

if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(obj_Bomb, i);
		with (_effect)
		{
			ProcessBombStep();
		}
	}
}

//var _number = instance_number(obj_Laser);

//if (_number > 0)
//{
//	for (var i = 0; i < _number; i++)
//	{
//		var _effect = instance_find(obj_Laser, i);
//		with (_effect)
//		{
//			/// @description LaserController

//			switch currentState
//			{
//				case LaserState.Idle:
//				break;

//				case LaserState.Start:
//					ExecuteStartSequence;
//				break;
			
//				case LaserState.Active:
//				break;
			
//				case LaserState.Finish:
//					dealingDamage = false;
//					ExecuteEndSequence;
//				break;
//			}

//			if (!GameIsPaused() && currentState > LaserState.Idle)
//			{
//				drawScaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
//				SetCollisionSize();
//			}
//		}
//	}
//}