global.EnemyData = [];
global.EnemyCountData = [];

#region Enums
enum EnemyIndex
{
	Kamikaze,
	Imp,
	Demon,
	Crystal,
	Bomber,
	Mage,
	EvolvedImp,
	Shaman,
	EvolvedDemon,
	Ninja
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

#macro KamikazeData		global.EnemyData[EnemyIndex.Kamikaze]
#macro ImpData			global.EnemyData[EnemyIndex.Imp]
#macro DemonData		global.EnemyData[EnemyIndex.Demon]
#macro CrystalData		global.EnemyData[EnemyIndex.Crystal]
#macro BomberData		global.EnemyData[EnemyIndex.Bomber]
#macro MageData			global.EnemyData[EnemyIndex.Mage]
#macro EvolvedImpData	global.EnemyData[EnemyIndex.EvolvedImp]
#macro ShamanData		global.EnemyData[EnemyIndex.Shaman]
#macro EvolvedDemonData global.EnemyData[EnemyIndex.EvolvedDemon]
#macro NinjaData		global.EnemyData[EnemyIndex.Ninja]

#region Kamikaze
KamikazeData = ds_map_create();
ds_map_add(KamikazeData, EnemyParameter.MaxHitPoints,		20);
ds_map_add(KamikazeData, EnemyParameter.MaxVelocity,		3);
ds_map_add(KamikazeData, EnemyParameter.Scores,				40);
ds_map_add(KamikazeData, EnemyParameter.HitPointsDrop,		1);
ds_map_add(KamikazeData, EnemyParameter.ShieldPointsDrop,	0);
ds_map_add(KamikazeData, EnemyParameter.UltimatePointsDrop, 1);
ds_map_add(KamikazeData, "object", obj_Enemy_Kamikaze);
#endregion

#region Imp
ImpData = ds_map_create();
ds_map_add(ImpData, EnemyParameter.MaxHitPoints,		30);
ds_map_add(ImpData, EnemyParameter.MaxVelocity,			1.5);
ds_map_add(ImpData, EnemyParameter.Scores,				50);
ds_map_add(ImpData, EnemyParameter.HitPointsDrop,		2);
ds_map_add(ImpData, EnemyParameter.ShieldPointsDrop,	1);
ds_map_add(ImpData, EnemyParameter.UltimatePointsDrop,	1);
ds_map_add(ImpData, "object", obj_Enemy_Imp);
#endregion

#region Demon
DemonData = ds_map_create();
ds_map_add(DemonData, EnemyParameter.MaxHitPoints,			60);
ds_map_add(DemonData, EnemyParameter.MaxVelocity,			1);
ds_map_add(DemonData, EnemyParameter.Scores,				80);
ds_map_add(DemonData, EnemyParameter.HitPointsDrop,			3);
ds_map_add(DemonData, EnemyParameter.ShieldPointsDrop,		2);
ds_map_add(DemonData, EnemyParameter.UltimatePointsDrop,	2);
ds_map_add(DemonData, "object", obj_Enemy_Demon);
#endregion

#region Crystal
CrystalData = ds_map_create();
ds_map_add(CrystalData, EnemyParameter.MaxHitPoints,		90);
ds_map_add(CrystalData, EnemyParameter.MaxVelocity,			0);
ds_map_add(CrystalData, EnemyParameter.Scores,				110);
ds_map_add(CrystalData, EnemyParameter.HitPointsDrop,		0);
ds_map_add(CrystalData, EnemyParameter.ShieldPointsDrop,	3);
ds_map_add(CrystalData, EnemyParameter.UltimatePointsDrop,	2);
ds_map_add(CrystalData, "object", obj_Enemy_Crystal);
#endregion

#region Bomber
BomberData = ds_map_create();
ds_map_add(BomberData, EnemyParameter.MaxHitPoints,			150);
ds_map_add(BomberData, EnemyParameter.MaxVelocity,			1);
ds_map_add(BomberData, EnemyParameter.Scores,				170);
ds_map_add(BomberData, EnemyParameter.HitPointsDrop,		4);
ds_map_add(BomberData, EnemyParameter.ShieldPointsDrop,		0);
ds_map_add(BomberData, EnemyParameter.UltimatePointsDrop,	2);
ds_map_add(BomberData, "object", obj_Enemy_Bomber);
#endregion

#region Mage
MageData = ds_map_create();
ds_map_add(MageData, EnemyParameter.MaxHitPoints,		150);
ds_map_add(MageData, EnemyParameter.MaxVelocity,		1.5);
ds_map_add(MageData, EnemyParameter.Scores,				190);
ds_map_add(MageData, EnemyParameter.HitPointsDrop,		0);
ds_map_add(MageData, EnemyParameter.ShieldPointsDrop,	5);
ds_map_add(MageData, EnemyParameter.UltimatePointsDrop, 3);
ds_map_add(MageData, "object", obj_Enemy_DarkMage);
#endregion

#region Evolved Imp
EvolvedImpData = ds_map_create();
ds_map_add(EvolvedImpData, EnemyParameter.MaxHitPoints,			200);
ds_map_add(EvolvedImpData, EnemyParameter.MaxVelocity,			1);
ds_map_add(EvolvedImpData, EnemyParameter.Scores,				220);
ds_map_add(EvolvedImpData, EnemyParameter.HitPointsDrop,		5);
ds_map_add(EvolvedImpData, EnemyParameter.ShieldPointsDrop,		2);
ds_map_add(EvolvedImpData, EnemyParameter.UltimatePointsDrop,	3);
ds_map_add(EvolvedImpData, "object", obj_Enemy_EvolvedImp);
#endregion

#region Shaman
ShamanData = ds_map_create();
ds_map_add(ShamanData, EnemyParameter.MaxHitPoints,			200);
ds_map_add(ShamanData, EnemyParameter.MaxVelocity,			1.25);
ds_map_add(ShamanData, EnemyParameter.Scores,				220);
ds_map_add(ShamanData, EnemyParameter.HitPointsDrop,		2);
ds_map_add(ShamanData, EnemyParameter.ShieldPointsDrop,		5);
ds_map_add(ShamanData, EnemyParameter.UltimatePointsDrop,	3);
ds_map_add(ShamanData, "object", obj_Enemy_Shaman);
#endregion

#region Evolved Demon
EvolvedDemonData = ds_map_create();
ds_map_add(EvolvedDemonData, EnemyParameter.MaxHitPoints,			250);
ds_map_add(EvolvedDemonData, EnemyParameter.MaxVelocity,			1);
ds_map_add(EvolvedDemonData, EnemyParameter.Scores,					280);
ds_map_add(EvolvedDemonData, EnemyParameter.HitPointsDrop,			3);
ds_map_add(EvolvedDemonData, EnemyParameter.ShieldPointsDrop,		3);
ds_map_add(EvolvedDemonData, EnemyParameter.UltimatePointsDrop,		5);
ds_map_add(EvolvedDemonData, "object", obj_Enemy_EvolvedDemon);
#endregion

#region Ninja
NinjaData = ds_map_create();
ds_map_add(NinjaData, EnemyParameter.MaxHitPoints,			250);
ds_map_add(NinjaData, EnemyParameter.MaxVelocity,			0);
ds_map_add(NinjaData, EnemyParameter.Scores,				280);
ds_map_add(NinjaData, EnemyParameter.HitPointsDrop,			5);
ds_map_add(NinjaData, EnemyParameter.ShieldPointsDrop,		5);
ds_map_add(NinjaData, EnemyParameter.UltimatePointsDrop,	5);
ds_map_add(NinjaData, "object", obj_Enemy_Ninja);
#endregion

for (var i = 0; i < array_length_1d(global.EnemyData); i++)
{
	var _enemyData = global.EnemyData[i];
	var _enemyObject = _enemyData[? "object"];
	global.EnemyCountData[i, 0] = _enemyObject;
	global.EnemyCountData[i, 1] = 0;
}