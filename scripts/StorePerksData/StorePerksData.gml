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
	FireballDamage,
	FireballRate,
	FireballSpread,
	FireballReload,
	FireballMaxAmmo,
	IciclesBullets,
	IciclesRate,
	IciclesSpread,
	IciclesReload,
	IciclesMaxAmmo
}

SetPerkData(Perk.RunSpeed,			2,	0.25,	true,	false,	"Run speed");
SetPerkData(Perk.DashSpeed,			2,	0.2,	true,	false,	"Dash distance");
SetPerkData(Perk.DashCharge,		1,	1.0,	true,	true,	"Dash charge");
SetPerkData(Perk.DashCoolDown,		2,	0.25,	true,	false,	"Dash cooldown");
SetPerkData(Perk.MaxHitPoints,		4,	0.25,	true,	false,	"Max HP");
SetPerkData(Perk.ShieldFactor,		2,	0.25,	true,	false,	"Shield power");
SetPerkData(Perk.MaxShieldPoints,	4,	25,		true,	true,	"Max shield points");
SetPerkData(Perk.MaxUltimate,		2,	0.25,	true,	false,	"Ultimate duration");
SetPerkData(Perk.UltimateGain,		2,	0.25,	true,	false,	"Ultimate income");
SetPerkData(Perk.UltimateDamage,	2,	0.25,	true,	false,	"Ultimate damage");
SetPerkData(Perk.FireballDamage,		2,	0.25,	true,	false,	"Fireball damage");
SetPerkData(Perk.FireballRate,		2,	0.25,	true,	false,	"Fireball rate");
SetPerkData(Perk.FireballSpread,		2,	0.5,	false,	false,	"Fireball spread");
SetPerkData(Perk.FireballReload,		2,	0.25,	false,	false,	"Fireball reload time");
SetPerkData(Perk.FireballMaxAmmo,		2,	25,		true,	true,	"Fireball ammo");
SetPerkData(Perk.IciclesBullets,	2,	5.0,	true,	true,	"Icicles bullets");
SetPerkData(Perk.IciclesRate,		2,	0.25,	true,	false,	"Icicles rate");
SetPerkData(Perk.IciclesSpread,		2,	0.25,	false,	false,	"Icicles spread");
SetPerkData(Perk.IciclesReload,		2,	0.25,	false,	false,	"Icicles reload time");
SetPerkData(Perk.IciclesMaxAmmo,	2,	5,		true,	true,	"Icicles ammo");