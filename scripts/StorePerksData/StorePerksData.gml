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
	PickupRadius,
	MaxUltimate,
	UltimateGain,
	UltimateDamage,
	FireballDamage,
	FireballMaxAmmo,
	FireballRecoveryRate,
	IciclesBullets,
	IciclesMaxAmmo,
	IciclesRecoveryRate,
	MeteorDamage,
	MeteorMaxAmmo,
	MeteorRecoveryRate,
	ArcaneDamage,
	ArcaneMaxAmmo,
	ArcaneChargeSpeed,
	ArcaneRecoveryRate
}

SetPerkData(Perk.RunSpeed,				2,	0.25,	true,	false,	"Run speed");
SetPerkData(Perk.DashSpeed,				2,	0.2,	true,	false,	"Dash distance");
SetPerkData(Perk.DashCharge,			1,	1.0,	true,	true,	"Dash charge");
SetPerkData(Perk.DashCoolDown,			2,	0.25,	true,	false,	"Dash cooldown");
SetPerkData(Perk.MaxHitPoints,			4,	25,		true,	true,	"Max HP");
SetPerkData(Perk.ShieldFactor,			2,	0.25,	true,	false,	"Shield power");
SetPerkData(Perk.MaxShieldPoints,		4,	20,		true,	true,	"Max shield points");
SetPerkData(Perk.PickupRadius,			1,	0.5,	true,	false,	"Pickup radius");
SetPerkData(Perk.MaxUltimate,			2,	0.25,	true,	false,	"Ultimate duration");
SetPerkData(Perk.UltimateGain,			2,	0.25,	true,	false,	"Ultimate income");
SetPerkData(Perk.UltimateDamage,		2,	0.25,	true,	false,	"Ultimate damage");
SetPerkData(Perk.FireballDamage,		2,	0.25,	true,	false,	"Fireball damage");
SetPerkData(Perk.FireballMaxAmmo,		2,	30,		true,	true,	"Fireball mana");
SetPerkData(Perk.FireballRecoveryRate,	2,	0.25,	true,	false,	"Fireball mana recovery");
SetPerkData(Perk.IciclesBullets,		2,	4.0,	true,	true,	"Icicles bullets");
SetPerkData(Perk.IciclesMaxAmmo,		2,	5,		true,	true,	"Icicles mana");
SetPerkData(Perk.IciclesRecoveryRate,	2,	0.25,	true,	false,	"Icicles mana recovery");
SetPerkData(Perk.MeteorDamage,			2,	0.25,	true,	false,	"Meteor damage");
SetPerkData(Perk.MeteorMaxAmmo,			2,	2,		true,	true,	"Meteor mana");
SetPerkData(Perk.MeteorRecoveryRate,	2,	0.25,	true,	false,	"Meteor mana recovery");
SetPerkData(Perk.ArcaneDamage,			2,	0.25,	true,	false,	"Arcane spear damage");
SetPerkData(Perk.ArcaneMaxAmmo,			2,	50,		true,	true,	"Arcane spear mana");
SetPerkData(Perk.ArcaneChargeSpeed,		2,	0.25,	false,	false,	"Arcane spear charge time");
SetPerkData(Perk.ArcaneRecoveryRate,	2,	0.25,	true,	false,	"Arcane spear mana recovery");