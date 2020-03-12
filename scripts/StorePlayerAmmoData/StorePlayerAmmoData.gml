global.PlayerAmmoData = [];

enum PlayerAmmo
{
	FireBall,
	Icicles,
	Meteor,
	ArcaneSpear,
	Ultimate
}

SetAmmoData(PlayerAmmo.FireBall,	100,		3);
SetAmmoData(PlayerAmmo.Icicles,		20,			0.6);
SetAmmoData(PlayerAmmo.Meteor,		10,			0.25);
SetAmmoData(PlayerAmmo.ArcaneSpear, 100,		2);