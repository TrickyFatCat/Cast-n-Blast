global.PerksData = [];
global.ChosenPerks = ds_list_create();

enum Perk
{
	RunSpeed,
	DashSpeed,
	MaxHitpoints,
	ShieldFactor,
	RepairCost,
	RepairSpeed,
	MaxEnergy,
	EnergyRestore,
	MaxUltimate,
	UltimateGain,
	MainDamage,
	MainRof,
	MainBounce,
	MainSpread,
	SecondaryBulletNumber,
	SecondaryRof,
	SecondaryBounce,
	SecondarySpread
}

#macro RunPerk				global.PerksData[Perk.RunSpeed]
#macro DashPerk				global.PerksData[Perk.DashSpeed]
#macro HitPointsPerk		global.PerksData[Perk.MaxHitpoints]
#macro ShieldPerk			global.PerksData[Perk.ShieldFactor]
#macro RepairCostPerk		global.PerksData[Perk.RepairCost]
#macro RepairSpeedPerk		global.PerksData[Perk.RepairSpeed]
#macro MaxEnergyPerk		global.PerksData[Perk.MaxEnergy]
#macro EnergyRestorePerk	global.PerksData[Perk.EnergyRestore]
#macro MaxUltimatePerk		global.PerksData[Perk.MaxUltimate]
#macro UltimateGainPerk		global.PerksData[Perk.UltimateGain]
#macro MainDamagePerk		global.PerksData[Perk.MainDamage]
#macro MainRofPerk			global.PerksData[Perk.MainRof]
#macro MainBouncePerk		global.PerksData[Perk.MainBounce]
#macro MainSpreadPerk		global.PerksData[Perk.MainSpread]
#macro SecondaryBulletsPerk global.PerksData[Perk.SecondaryBulletNumber]
#macro SecondaryRofPerk		global.PerksData[Perk.SecondaryRof]
#macro SecondaryBouncePerk	global.PerksData[Perk.SecondaryBounce]
#macro SecondarySpreadPerk	global.PerksData[Perk.SecondarySpread]

RunPerk = ds_map_create();
ds_map_add(RunPerk, "currentLevel",	0);
ds_map_add(RunPerk, "maxLevel",		5);
ds_map_add(RunPerk, "perkFactor",	0.1);

DashPerk = ds_map_create();
ds_map_add(DashPerk, "currentLevel",	0);
ds_map_add(DashPerk, "maxLevel",		5);
ds_map_add(DashPerk, "perkFactor",		0.1);

HitPointsPerk = ds_map_create();
ds_map_add(HitPointsPerk, "currentLevel",	0);
ds_map_add(HitPointsPerk, "maxLevel",		5);
ds_map_add(HitPointsPerk, "perkFactor",		0.1);

ShieldPerk = ds_map_create();
ds_map_add(ShieldPerk, "currentLevel",	0);
ds_map_add(ShieldPerk, "maxLevel",		5);
ds_map_add(ShieldPerk, "perkFactor",	0.1);

RepairCostPerk = ds_map_create();
ds_map_add(RepairCostPerk, "currentLevel",	0);
ds_map_add(RepairCostPerk, "maxLevel",		5);
ds_map_add(RepairCostPerk, "perkFactor",	0.1);

RepairSpeedPerk = ds_map_create();
ds_map_add(RepairSpeedPerk, "currentLevel",	0);
ds_map_add(RepairSpeedPerk, "maxLevel",		5);
ds_map_add(RepairSpeedPerk, "perkFactor",	0.1);

MaxEnergyPerk = ds_map_create();
ds_map_add(MaxEnergyPerk, "currentLevel",	0);
ds_map_add(MaxEnergyPerk, "maxLevel",		5);
ds_map_add(MaxEnergyPerk, "perkFactor",		0.1);

EnergyRestorePerk = ds_map_create();
ds_map_add(EnergyRestorePerk, "currentLevel",	0);
ds_map_add(EnergyRestorePerk, "maxLevel",		5);
ds_map_add(EnergyRestorePerk, "perkFactor",		0.1);

MaxUltimatePerk = ds_map_create();
ds_map_add(MaxUltimatePerk, "currentLevel",	0);
ds_map_add(MaxUltimatePerk, "maxLevel",		5);
ds_map_add(MaxUltimatePerk, "perkFactor",	0.1);

UltimateGainPerk = ds_map_create();
ds_map_add(UltimateGainPerk, "currentLevel",	0);
ds_map_add(UltimateGainPerk, "maxLevel",		5);
ds_map_add(UltimateGainPerk, "perkFactor",		0.1);

MainDamagePerk = ds_map_create();
ds_map_add(MainDamagePerk, "currentLevel",	0);
ds_map_add(MainDamagePerk, "maxLevel",		5);
ds_map_add(MainDamagePerk, "perkFactor",	0.1);

MainRofPerk = ds_map_create();
ds_map_add(MainRofPerk, "currentLevel",	0);
ds_map_add(MainRofPerk, "maxLevel",		5);
ds_map_add(MainRofPerk, "perkFactor",	0.1);

MainBouncePerk = ds_map_create();
ds_map_add(MainBouncePerk, "currentLevel",	0);
ds_map_add(MainBouncePerk, "maxLevel",		5);
ds_map_add(MainBouncePerk, "perkFactor",	0.1);

MainSpreadPerk = ds_map_create();
ds_map_add(MainSpreadPerk, "currentLevel",	0);
ds_map_add(MainSpreadPerk, "maxLevel",		5);
ds_map_add(MainSpreadPerk, "perkFactor",	0.1);

SecondaryBulletsPerk = ds_map_create();
ds_map_add(SecondaryBulletsPerk, "currentLevel",	0);
ds_map_add(SecondaryBulletsPerk, "maxLevel",		5);
ds_map_add(SecondaryBulletsPerk, "perkFactor",		1);

SecondaryRofPerk = ds_map_create();
ds_map_add(SecondaryRofPerk, "currentLevel",	0);
ds_map_add(SecondaryRofPerk, "maxLevel",		5);
ds_map_add(SecondaryRofPerk, "perkFactor",		0.1);

SecondaryBouncePerk = ds_map_create();
ds_map_add(SecondaryBouncePerk, "currentLevel",	0);
ds_map_add(SecondaryBouncePerk, "maxLevel",		5);
ds_map_add(SecondaryBouncePerk, "perkFactor",	0.1);

SecondarySpreadPerk = ds_map_create();
ds_map_add(SecondarySpreadPerk, "currentLevel",	0);
ds_map_add(SecondarySpreadPerk, "maxLevel",		5);
ds_map_add(SecondarySpreadPerk, "perkFactor",	0.1);