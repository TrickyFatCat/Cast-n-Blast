global.PlayerAmmoData = [];

enum PlayerAmmo
{
	FireBall,
	Icicles,
	Meteor,
	ArcaneSpear
}

SetAmmoData(PlayerAmmo.FireBall,	40,		2);
SetAmmoData(PlayerAmmo.Icicles,		10,		0.3);
SetAmmoData(PlayerAmmo.Meteor,		4,		0.15);
SetAmmoData(PlayerAmmo.ArcaneSpear, 100,	1.5);