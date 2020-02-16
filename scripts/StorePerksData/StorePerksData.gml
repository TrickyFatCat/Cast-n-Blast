global.PerksData = [];
global.ActivePerks = ds_list_create();
global.ChosenPerks = ds_list_create();

enum Perk
{
	RunSpeed,
	DashSpeed,
	DashCharge,
	DashCoolDown,
	MaxHitPoints,
	ShieldFactor,
	MaxShieldPoints,
	MaxUltimate,
	UltimateGain,
	UltimateDamage,
	PlasmaDamage,
	PlasmaRate,
	PlasmaSpread,
	ShotgunBullets,
	ShotgunRate,
	ShotgunSpread
}

SetPerkData(Perk.RunSpeed,			5,	0.1,	true,	false,	"Run speed");
SetPerkData(Perk.DashSpeed,			2,	0.15,	true,	false,	"Dash distance");
SetPerkData(Perk.DashCharge,		1,	1.0,	true,	true,	"Dash charge");
SetPerkData(Perk.DashCoolDown,		2,	0.25,	true,	false,	"Dash cooldown");
SetPerkData(Perk.MaxHitPoints,		5,	0.2,	true,	false,	"Max HP");
SetPerkData(Perk.ShieldFactor,		2,	0.25,	true,	false,	"Shield power");
SetPerkData(Perk.MaxShieldPoints,	5,	10,		true,	true,	"Max shield points");
SetPerkData(Perk.MaxUltimate,		5,	0.1,	true,	false,	"Ultimate duration");
SetPerkData(Perk.UltimateGain,		5,	0.1,	true,	false,	"Ultimate income");
SetPerkData(Perk.UltimateDamage,	5,	0.1,	true,	false,	"Ultimate damage");
SetPerkData(Perk.PlasmaDamage,		5,	0.1,	true,	false,	"Plasma damage");
SetPerkData(Perk.PlasmaRate,		5,	0.1,	true,	false,	"Plasma rate");
SetPerkData(Perk.PlasmaSpread,		5,	0.2,	false,	false,	"Plasma spread");
SetPerkData(Perk.ShotgunBullets,	5,	1.0,	true,	true,	"Shotgun bullets");
SetPerkData(Perk.ShotgunRate,		5,	0.1,	true,	false,	"Shotgun rate");
SetPerkData(Perk.ShotgunSpread,		5,	0.1,	false,	false,	"Shotgun spread");