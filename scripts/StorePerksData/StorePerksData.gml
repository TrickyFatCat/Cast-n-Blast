global.PerksData = [];
global.ActivePerks = ds_list_create();
global.ChosenPerks = ds_list_create();

enum Perk
{
	RunSpeed,
	DashSpeed,
	MaxHitpoints,
	ShieldFactor,
	MaxEnergy,
	EnergyRestore,
	OverheatTime,
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

SetPerkData(Perk.RunSpeed,			5, 0.1, true,	false,	"Run speed");
SetPerkData(Perk.DashSpeed,			5, 0.1, true,	false,	"Dash distance");
SetPerkData(Perk.MaxHitpoints,		5, 0.1, true,	false,	"Max HP");
SetPerkData(Perk.ShieldFactor,		5, 0.1, true,	false,	"ShieldPower");
SetPerkData(Perk.MaxEnergy,			5, 0.1, true,	false,	"Max erergy");
SetPerkData(Perk.EnergyRestore,		5, 0.1, true,	false,	"Energy restore rate");
SetPerkData(Perk.OverheatTime,		5, 0.1, false,	false,	"Overheat time");
SetPerkData(Perk.MaxUltimate,		5, 0.1, true,	false,	"Ultimate duration");
SetPerkData(Perk.UltimateGain,		5, 0.1, true,	false,	"Ultimate income");
SetPerkData(Perk.UltimateDamage,	5, 0.1, true,	false,	"Ultimate damage");
SetPerkData(Perk.PlasmaDamage,		5, 0.1, true,	false,	"Plasma damage");
SetPerkData(Perk.PlasmaRate,		5, 0.1, true,	false,	"Plasma rate");
SetPerkData(Perk.PlasmaSpread,		5, 0.1, false,	false,	"Plasma spread");
SetPerkData(Perk.ShotgunBullets,	5, 1.0,	true,	true,	"Shotgun bullets");
SetPerkData(Perk.ShotgunRate,		5, 0.1, true,	false,	"Shotgun rate");
SetPerkData(Perk.ShotgunSpread,		5, 0.1, false,	false,	"Shotgun spread");