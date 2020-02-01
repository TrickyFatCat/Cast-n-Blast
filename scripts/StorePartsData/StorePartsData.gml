// Parameters
enum PlayerPart
{
	Legs0,
	Legs1,
	Legs2,
	Legs3,
	Case0,
	Case1,
	Case2,
	Case3,
	Weapon0,
	Weapon1,
	Weapon2,
	Weapon3
}

#macro Legs0Data global.PartsData[PlayerPart.Legs0]
#macro Legs1Data global.PartsData[PlayerPart.Legs1]
#macro Legs2Data global.PartsData[PlayerPart.Legs2]
#macro Legs3Data global.PartsData[PlayerPart.Legs3]

#macro Case0Data global.PartsData[PlayerPart.Case0]
#macro Case1Data global.PartsData[PlayerPart.Case1]
#macro Case2Data global.PartsData[PlayerPart.Case2]
#macro Case3Data global.PartsData[PlayerPart.Case3]

#macro Weapon0Data global.PartsData[PlayerPart.Weapon0]
#macro Weapon1Data global.PartsData[PlayerPart.Weapon1]
#macro Weapon2Data global.PartsData[PlayerPart.Weapon2]
#macro Weapon3Data global.PartsData[PlayerPart.Weapon3]

#region //Legs

// Legs level 0
Legs0Data = ds_map_create();
ds_map_add(Legs0Data, "level",	0);
ds_map_add(Legs0Data, "maxHitPoints",	100);
ds_map_add(Legs0Data, "effectiveness",	1);
ds_map_add(Legs0Data, "repairCost",		100);
ds_map_add(Legs0Data, "upgradeCost",	0);

// Legs level 1
Legs1Data = ds_map_create();
ds_map_add(Legs1Data, "level",	1);
ds_map_add(Legs1Data, "maxHitPoints",	125);
ds_map_add(Legs1Data, "effectiveness",	1.25);
ds_map_add(Legs1Data, "repairCost",		200);
ds_map_add(Legs1Data, "upgradeCost",	200);

// Legs level 2
Legs2Data = ds_map_create();
ds_map_add(Legs2Data, "level",	2);
ds_map_add(Legs2Data, "maxHitPoints",	150);
ds_map_add(Legs2Data, "effectiveness",	1.5);
ds_map_add(Legs2Data, "repairCost",		400);
ds_map_add(Legs2Data, "upgradeCost",	400);

// Legs level 3
Legs3Data = ds_map_create();
ds_map_add(Legs3Data, "level",	3);
ds_map_add(Legs3Data, "maxHitPoints",	200);
ds_map_add(Legs3Data, "effectiveness",	2);
ds_map_add(Legs2Data, "repairCost",		600);
ds_map_add(Legs3Data, "upgradeCost",	600);

#endregion

#region //Case

// Case level 0
Case0Data = ds_map_create();
ds_map_add(Case0Data, "level",	0);
ds_map_add(Case0Data, "maxHitPoints",	100);
ds_map_add(Case0Data, "effectiveness",	1);
ds_map_add(Case0Data, "repairCost",		100);
ds_map_add(Case0Data, "upgradeCost",	0);

// Case level 1
Case1Data = ds_map_create();
ds_map_add(Case1Data, "level",	1);
ds_map_add(Case1Data, "maxHitPoints",	125);
ds_map_add(Case1Data, "effectiveness",	1.25);
ds_map_add(Case1Data, "repairCost",		200);
ds_map_add(Case1Data, "upgradeCost",	200);

// Case level 2
Case2Data = ds_map_create();
ds_map_add(Case2Data, "level",	2);
ds_map_add(Case2Data, "maxHitPoints",	150);
ds_map_add(Case2Data, "effectiveness",	1.5);
ds_map_add(Case2Data, "repairCost",		400);
ds_map_add(Case2Data, "upgradeCost",	400);

// Case level 3
Case3Data = ds_map_create();
ds_map_add(Case3Data, "level",	3);
ds_map_add(Case3Data, "maxHitPoints",	200);
ds_map_add(Case3Data, "effectiveness",	2);
ds_map_add(Case3Data, "repairCost",		600);
ds_map_add(Case3Data, "upgradeCost",	600);

#endregion

#region //Weapon

// Case level 0
Weapon0Data = ds_map_create();
ds_map_add(Weapon0Data, "level",		0);
ds_map_add(Weapon0Data, "maxHitPoints",	100);
ds_map_add(Weapon0Data, "effectiveness",1);
ds_map_add(Weapon0Data, "repairCost",	100);
ds_map_add(Weapon0Data, "upgradeCost",	0);

// Case level 1
Weapon1Data = ds_map_create();
ds_map_add(Weapon1Data, "level",		1);
ds_map_add(Weapon1Data, "maxHitPoints",	125);
ds_map_add(Weapon1Data, "effectiveness",1.25);
ds_map_add(Weapon1Data, "repairCost",	200);
ds_map_add(Weapon1Data, "upgradeCost",	200);

// Case level 2
Weapon2Data = ds_map_create();
ds_map_add(Weapon2Data, "level",		2);
ds_map_add(Weapon2Data, "maxHitPoints",	150);
ds_map_add(Weapon2Data, "effectiveness",1.5);
ds_map_add(Weapon2Data, "repairCost",	400);
ds_map_add(Weapon2Data, "upgradeCost",	400);

// Case level 3
Weapon3Data = ds_map_create();
ds_map_add(Weapon3Data, "level",		3);
ds_map_add(Weapon3Data, "maxHitPoints",	200);
ds_map_add(Weapon3Data, "effectiveness",2);
ds_map_add(Weapon3Data, "repairCost",	600);
ds_map_add(Weapon3Data, "upgradeCost",	600);

#endregion