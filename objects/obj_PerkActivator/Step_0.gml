if (playerIsIn && perkId != noone)
{
	triggerColour = c_green;
}
else
{
	triggerColour = c_gray;
}

triggerVisualiser.triggerColour = triggerColour;
playerIsIn = false;