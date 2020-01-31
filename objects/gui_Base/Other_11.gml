/// @description TransitionInStateHandler

/// Parameters
var _transitionSpeedIn = max(transitionFactor / 10, 0.005);

/// Sequence
transitionInTimer += global.TimeFactor;

if (CheckTimer(transitionInTimer, transitionInTime))
{
	if (transitionFactor != 0)
	{
		transitionFactor = Approach(transitionFactor, 0, _transitionSpeedIn);
	}
	else
	{
		SetGameState(GameState.Active);
		currentState = InterfaceState.GUI;
	}
}	