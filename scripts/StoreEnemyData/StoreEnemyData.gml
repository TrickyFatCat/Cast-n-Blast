global.EnemyData = [];

#region Enums
enum EnemyIndex
{
	Kamikaze,
	Imp,
	Demon,
	Mage,
	Ninja,
	Crystal,
	Shaman,
	Bomber
}

enum EnemyParameter
{
	MaxHitPoints,
	MaxVelocity,
	Scores,
	HitPointsDrop,
	ShieldPointsDrop,
	UltimatePointsDrop
}
#endregion

#macro KamikazeData global.EnemyData[EnemyIndex.Kamikaze]
#macro ImpData global.EnemyData[EnemyIndex.Imp]
#macro DemonData global.EnemyData[EnemyIndex.Demon]
#macro MageData global.EnemyData[EnemyIndex.Mage]
#macro NinjaData global.EnemyData[EnemyIndex.Ninja]
#macro CrystalData global.EnemyData[EnemyIndex.Crystal]
#macro ShamanData global.EnemyData[EnemyIndex.Shaman]
#macro BomberData global.EnemyData[EnemyIndex.Bomber]

#region Kamikaze
KamikazeData = ds_map_create();
ds_map_add(KamikazeData, EnemyParameter.MaxHitPoints,		20);
ds_map_add(KamikazeData, EnemyParameter.MaxVelocity,		3);
ds_map_add(KamikazeData, EnemyParameter.Scores,				1);
ds_map_add(KamikazeData, EnemyParameter.HitPointsDrop,		1);
ds_map_add(KamikazeData, EnemyParameter.ShieldPointsDrop,	1);
ds_map_add(KamikazeData, EnemyParameter.UltimatePointsDrop, 1);
#endregion

#region Imp
ImpData = ds_map_create();
ds_map_add(ImpData, EnemyParameter.MaxHitPoints,		50);
ds_map_add(ImpData, EnemyParameter.MaxVelocity,			1.5);
ds_map_add(ImpData, EnemyParameter.Scores,				4);
ds_map_add(ImpData, EnemyParameter.HitPointsDrop,		2);
ds_map_add(ImpData, EnemyParameter.ShieldPointsDrop,	1);
ds_map_add(ImpData, EnemyParameter.UltimatePointsDrop,	2);
#endregion

#region Demon
DemonData = ds_map_create();
ds_map_add(DemonData, EnemyParameter.MaxHitPoints,			300);
ds_map_add(DemonData, EnemyParameter.MaxVelocity,			1);
ds_map_add(DemonData, EnemyParameter.Scores,				64);
ds_map_add(DemonData, EnemyParameter.HitPointsDrop,			5);
ds_map_add(DemonData, EnemyParameter.ShieldPointsDrop,		1);
ds_map_add(DemonData, EnemyParameter.UltimatePointsDrop,	5);
#endregion

#region Mage
MageData = ds_map_create();
ds_map_add(MageData, EnemyParameter.MaxHitPoints,		100);
ds_map_add(MageData, EnemyParameter.MaxVelocity,		1.5);
ds_map_add(MageData, EnemyParameter.Scores,				16);
ds_map_add(MageData, EnemyParameter.HitPointsDrop,		1);
ds_map_add(MageData, EnemyParameter.ShieldPointsDrop,	5);
ds_map_add(MageData, EnemyParameter.UltimatePointsDrop, 2);
#endregion

#region Ninja
NinjaData = ds_map_create();
ds_map_add(NinjaData, EnemyParameter.MaxHitPoints,			200);
ds_map_add(NinjaData, EnemyParameter.MaxVelocity,			0);
ds_map_add(NinjaData, EnemyParameter.Scores,				32);
ds_map_add(NinjaData, EnemyParameter.HitPointsDrop,			2);
ds_map_add(NinjaData, EnemyParameter.ShieldPointsDrop,		3);
ds_map_add(NinjaData, EnemyParameter.UltimatePointsDrop,	5);
#endregion

#region Crystal
CrystalData = ds_map_create();
ds_map_add(CrystalData, EnemyParameter.MaxHitPoints,		150);
ds_map_add(CrystalData, EnemyParameter.MaxVelocity,			0);
ds_map_add(CrystalData, EnemyParameter.Scores,				5);
ds_map_add(CrystalData, EnemyParameter.HitPointsDrop,		1);
ds_map_add(CrystalData, EnemyParameter.ShieldPointsDrop,	1);
ds_map_add(CrystalData, EnemyParameter.UltimatePointsDrop,	1);
#endregion

#region Shaman
ShamanData = ds_map_create();
ds_map_add(ShamanData, EnemyParameter.MaxHitPoints,			100);
ds_map_add(ShamanData, EnemyParameter.MaxVelocity,			1.25);
ds_map_add(ShamanData, EnemyParameter.Scores,				16);
ds_map_add(ShamanData, EnemyParameter.HitPointsDrop,		3);
ds_map_add(ShamanData, EnemyParameter.ShieldPointsDrop,		1);
ds_map_add(ShamanData, EnemyParameter.UltimatePointsDrop,	3);
#endregion

#region Bomber
BomberData = ds_map_create();
ds_map_add(BomberData, EnemyParameter.MaxHitPoints,			300);
ds_map_add(BomberData, EnemyParameter.MaxVelocity,			1);
ds_map_add(BomberData, EnemyParameter.Scores,				64);
ds_map_add(BomberData, EnemyParameter.HitPointsDrop,		5);
ds_map_add(BomberData, EnemyParameter.ShieldPointsDrop,		1);
ds_map_add(BomberData, EnemyParameter.UltimatePointsDrop,	5);
#endregion