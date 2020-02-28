
// Inherit the parent event
event_inherited();

switch (global.Player.weaponID)
{
	case PlayerWeapon.FireBall:
		drawColour = c_yellow;
	break;
	
	case PlayerWeapon.Icicles:
		drawColour = c_aqua;
	break;
	
	case PlayerWeapon.Meteor:
		drawColour = c_maroon;
	break;
	
	case PlayerWeapon.ArcaneSpear:
		drawColour = c_fuchsia;
	break;
}