global.PlayerAmmoData = [];

enum PlayerAmmo
{
	FireBall,
	Icicles,
	Meteor,
	ArcaneSpear
}

SetAmmoData(PlayerAmmo.FireBall,	60,		2);
SetAmmoData(PlayerAmmo.Icicles,		20,		0.3);
SetAmmoData(PlayerAmmo.Meteor,		10,		0.15);
SetAmmoData(PlayerAmmo.ArcaneSpear, 100,	1.5);