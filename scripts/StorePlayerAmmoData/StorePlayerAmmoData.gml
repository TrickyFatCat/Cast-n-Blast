global.PlayerAmmoData = [];

enum PlayerAmmo
{
	FireBall,
	Icicles,
	Meteor,
	ArcaneSpear
}

SetAmmoData(PlayerAmmo.FireBall,	40,		4);
SetAmmoData(PlayerAmmo.Icicles,		10,		3);
SetAmmoData(PlayerAmmo.Meteor,		2,		0.5);
SetAmmoData(PlayerAmmo.ArcaneSpear, 100,	3);