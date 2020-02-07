global.PerksData = [];

enum Perk
{
	RunSpeed,
	DashSpeed,
	MaxHitpoints,
	ShieldPower,
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

#macro RunPerk				global.PerksData[Perk.RunSpeed];
#macro DashPerk				global.PerksData[Perk.DashSpeed];
#macro HitPointsPerk		global.PerksData[Perk.MaxHitpoints];
#macro ShieldPerk			global.PerksData[Perk.ShieldPower];
#macro RepairCostPerk		global.PerksData[Perk.RepairCost];
#macro RepairSpeedPerk		global.PerksData[Perk.RepairSpeed];
#macro MaxEnergyPerk		global.PerksData[Perk.MaxEnergy];
#macro EnergyRestorePerk	global.PerksData[Perk.EnergyRestore];
#macro MaxUltimatePerk		global.PerksData[Perk.MaxUltimate];
#macro UltimateGainPerk		global.PerksData[Perk.UltimateGain];
#macro MainDamagePerk		global.PerksData[Perk.MainDamage];
#macro MainRofPerk			global.PerksData[Perk.MainRof];
#macro MainBouncePerk		global.PerksData[Perk.MainBounce];
#macro MainSpreadPerk		global.PerksData[Perk.MainSpread];
#macro SecondaryBulletsPerk global.PerksData[Perk.SecondaryBulletNumber];
#macro SecondaryRofPerk		global.PerksData[Perk.SecondaryRof];
#macro SecondaryBouncePerk	global.PerksData[Perk.SecondaryBounce];
#macro SecondarySpreadPerk	global.PerksData[Perk.SecondarySpread];