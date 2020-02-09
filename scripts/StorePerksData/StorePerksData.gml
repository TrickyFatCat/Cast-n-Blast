global.PerksData = [];
global.ActivePerks = ds_list_create();
global.ChosenPerks = ds_list_create();

enum Perk
{
	RunSpeed,
	DashSpeed,
	MaxHitpoints,
	ShieldFactor,
	RepairCost,
	RepairRate,
	MaxEnergy,
	EnergyRestore,
	OverheatTime,
	MaxUltimate,
	UltimateGain,
	MainDamage,
	MainRof,
	MainSpread,
	SecondaryBulletNumber,
	SecondaryRof,
	SecondarySpread
}

#macro RunPerk				global.PerksData[Perk.RunSpeed]
#macro DashPerk				global.PerksData[Perk.DashSpeed]
#macro HitPointsPerk		global.PerksData[Perk.MaxHitpoints]
#macro ShieldPerk			global.PerksData[Perk.ShieldFactor]
#macro RepairCostPerk		global.PerksData[Perk.RepairCost]
#macro RepairRatePerk		global.PerksData[Perk.RepairRate]
#macro MaxEnergyPerk		global.PerksData[Perk.MaxEnergy]
#macro EnergyRestorePerk	global.PerksData[Perk.EnergyRestore]
#macro OverheatTimePerk		global.PerksData[Perk.OverheatTime]
#macro MaxUltimatePerk		global.PerksData[Perk.MaxUltimate]
#macro UltimateGainPerk		global.PerksData[Perk.UltimateGain]
#macro MainDamagePerk		global.PerksData[Perk.MainDamage]
#macro MainRofPerk			global.PerksData[Perk.MainRof]
#macro MainSpreadPerk		global.PerksData[Perk.MainSpread]
#macro SecondaryBulletsPerk global.PerksData[Perk.SecondaryBulletNumber]
#macro SecondaryRofPerk		global.PerksData[Perk.SecondaryRof]
#macro SecondarySpreadPerk	global.PerksData[Perk.SecondarySpread]

RunPerk = ds_map_create();
ds_map_add(RunPerk, "currentLevel",	0);
ds_map_add(RunPerk, "maxLevel",		5);
ds_map_add(RunPerk, "perkFactor",	0.1);
ds_map_add(RunPerk, "name",			"Run speed");
ds_map_add(RunPerk, "description",	GenerateDescription(Perk.RunSpeed, true, true));

DashPerk = ds_map_create();
ds_map_add(DashPerk, "currentLevel",	0);
ds_map_add(DashPerk, "maxLevel",		5);
ds_map_add(DashPerk, "perkFactor",		0.1);
ds_map_add(DashPerk, "name",			"Dash distance");
ds_map_add(DashPerk, "description",		GenerateDescription(Perk.DashSpeed, true, true));

HitPointsPerk = ds_map_create();
ds_map_add(HitPointsPerk, "currentLevel",	0);
ds_map_add(HitPointsPerk, "maxLevel",		5);
ds_map_add(HitPointsPerk, "perkFactor",		0.1);
ds_map_add(HitPointsPerk, "name",			"Max HP");
ds_map_add(HitPointsPerk, "description",	GenerateDescription(Perk.MaxHitpoints, true, true));

ShieldPerk = ds_map_create();
ds_map_add(ShieldPerk, "currentLevel",	0);
ds_map_add(ShieldPerk, "maxLevel",		5);
ds_map_add(ShieldPerk, "perkFactor",	0.1);
ds_map_add(ShieldPerk, "name",			"Shield power");
ds_map_add(ShieldPerk, "description",	GenerateDescription(Perk.ShieldFactor, true, true));

RepairCostPerk = ds_map_create();
ds_map_add(RepairCostPerk, "currentLevel",	0);
ds_map_add(RepairCostPerk, "maxLevel",		5);
ds_map_add(RepairCostPerk, "perkFactor",	0.1);
ds_map_add(RepairCostPerk, "name",			"Repair cost");
ds_map_add(RepairCostPerk, "description",	GenerateDescription(Perk.RepairCost, false, true));

RepairRatePerk = ds_map_create();
ds_map_add(RepairRatePerk, "currentLevel",	0);
ds_map_add(RepairRatePerk, "maxLevel",		5);
ds_map_add(RepairRatePerk, "perkFactor",	0.1);
ds_map_add(RepairRatePerk, "name",			"Repair rate");
ds_map_add(RepairRatePerk, "description",	GenerateDescription(Perk.RepairRate, true, true));

MaxEnergyPerk = ds_map_create();
ds_map_add(MaxEnergyPerk, "currentLevel",	0);
ds_map_add(MaxEnergyPerk, "maxLevel",		5);
ds_map_add(MaxEnergyPerk, "perkFactor",		0.1);
ds_map_add(MaxEnergyPerk, "name",			"Max energy");
ds_map_add(MaxEnergyPerk, "description",	GenerateDescription(Perk.MaxEnergy, true, true));

EnergyRestorePerk = ds_map_create();
ds_map_add(EnergyRestorePerk, "currentLevel",	0);
ds_map_add(EnergyRestorePerk, "maxLevel",		5);
ds_map_add(EnergyRestorePerk, "perkFactor",		0.1);
ds_map_add(EnergyRestorePerk, "name",			"Energy restore rate");
ds_map_add(EnergyRestorePerk, "description",	GenerateDescription(Perk.EnergyRestore, true, true));

OverheatTimePerk = ds_map_create();
ds_map_add(OverheatTimePerk, "currentLevel",	0);
ds_map_add(OverheatTimePerk, "maxLevel",		5);
ds_map_add(OverheatTimePerk, "perkFactor",		0.1);
ds_map_add(OverheatTimePerk, "name",			"Overheat time");
ds_map_add(OverheatTimePerk, "description",		GenerateDescription(Perk.OverheatTime, false, true));

MaxUltimatePerk = ds_map_create();
ds_map_add(MaxUltimatePerk, "currentLevel",	0);
ds_map_add(MaxUltimatePerk, "maxLevel",		5);
ds_map_add(MaxUltimatePerk, "perkFactor",	0.1);
ds_map_add(MaxUltimatePerk, "name",			"Ultimate duration");
ds_map_add(MaxUltimatePerk, "description",	GenerateDescription(Perk.MaxUltimate, true, true));

UltimateGainPerk = ds_map_create();
ds_map_add(UltimateGainPerk, "currentLevel",	0);
ds_map_add(UltimateGainPerk, "maxLevel",		5);
ds_map_add(UltimateGainPerk, "perkFactor",		0.1);
ds_map_add(UltimateGainPerk, "name",			"Ultimate income");
ds_map_add(UltimateGainPerk, "description",		GenerateDescription(Perk.UltimateGain, true, true));

MainDamagePerk = ds_map_create();
ds_map_add(MainDamagePerk, "currentLevel",	0);
ds_map_add(MainDamagePerk, "maxLevel",		5);
ds_map_add(MainDamagePerk, "perkFactor",	0.1);
ds_map_add(MainDamagePerk, "name",			"Plasma damage");
ds_map_add(MainDamagePerk, "description",	GenerateDescription(Perk.MainDamage, true, true));

MainRofPerk = ds_map_create();
ds_map_add(MainRofPerk, "currentLevel",	0);
ds_map_add(MainRofPerk, "maxLevel",		5);
ds_map_add(MainRofPerk, "perkFactor",	0.1);
ds_map_add(MainRofPerk, "name",			"Plasma rate");
ds_map_add(MainRofPerk, "description",	GenerateDescription(Perk.MainRof, true, true));

MainSpreadPerk = ds_map_create();
ds_map_add(MainSpreadPerk, "currentLevel",	0);
ds_map_add(MainSpreadPerk, "maxLevel",		5);
ds_map_add(MainSpreadPerk, "perkFactor",	0.1);
ds_map_add(MainSpreadPerk, "name",			"Plasma spread");
ds_map_add(MainSpreadPerk, "description",	GenerateDescription(Perk.MainSpread, false, true));

SecondaryBulletsPerk = ds_map_create();
ds_map_add(SecondaryBulletsPerk, "currentLevel",	0);
ds_map_add(SecondaryBulletsPerk, "maxLevel",		5);
ds_map_add(SecondaryBulletsPerk, "perkFactor",		1);
ds_map_add(SecondaryBulletsPerk, "name",			"Shotgun bullets");
ds_map_add(SecondaryBulletsPerk, "description",		GenerateDescription(Perk.SecondaryBulletNumber, true, false));

SecondaryRofPerk = ds_map_create();
ds_map_add(SecondaryRofPerk, "currentLevel",	0);
ds_map_add(SecondaryRofPerk, "maxLevel",		5);
ds_map_add(SecondaryRofPerk, "perkFactor",		0.1);
ds_map_add(SecondaryRofPerk, "name",			"Shotgun rate");
ds_map_add(SecondaryRofPerk, "description",		GenerateDescription(Perk.SecondaryRof, true, true));

SecondarySpreadPerk = ds_map_create();
ds_map_add(SecondarySpreadPerk, "currentLevel",	0);
ds_map_add(SecondarySpreadPerk, "maxLevel",		5);
ds_map_add(SecondarySpreadPerk, "perkFactor",	0.1);
ds_map_add(SecondarySpreadPerk, "name",			"Shotgun spread");
ds_map_add(SecondarySpreadPerk, "description",	GenerateDescription(Perk.SecondarySpread, false, true));