
#macro Legs0Data global.LegsData[0]
#macro Legs1Data global.LegsData[1]
#macro Legs2Data global.LegsData[2]
#macro Legs3Data global.LegsData[3]
#macro Legs4Data global.LegsData[4]
#macro Legs5Data global.LegsData[5]

#macro Case0Data global.CaseData[0]
#macro Case1Data global.CaseData[1]
#macro Case2Data global.CaseData[2]
#macro Case3Data global.CaseData[3]
#macro Case4Data global.CaseData[4]
#macro Case5Data global.CaseData[5]

#macro Weapon0Data global.WeaponData[0]
#macro Weapon1Data global.WeaponData[1]
#macro Weapon2Data global.WeaponData[2]
#macro Weapon3Data global.WeaponData[3]
#macro Weapon4Data global.WeaponData[4]
#macro Weapon5Data global.WeaponData[5]

#region //Legs

// Legs level 0
Legs0Data = ds_map_create();
ds_map_add(Legs0Data, "maxHitPoints",	25);
ds_map_add(Legs0Data, "effectiveness",	1);
ds_map_add(Legs0Data, "repairCost",		50);
ds_map_add(Legs0Data, "upgradeCost",	0);

// Legs level 1
Legs1Data = ds_map_create();
ds_map_add(Legs1Data, "maxHitPoints",	30);
ds_map_add(Legs1Data, "effectiveness",	1.1);
ds_map_add(Legs1Data, "repairCost",		60);
ds_map_add(Legs1Data, "upgradeCost",	40);

// Legs level 2
Legs2Data = ds_map_create();
ds_map_add(Legs2Data, "maxHitPoints",	35);
ds_map_add(Legs2Data, "effectiveness",	1.2);
ds_map_add(Legs2Data, "repairCost",		70);
ds_map_add(Legs2Data, "upgradeCost",	60);

// Legs level 3
Legs3Data = ds_map_create();
ds_map_add(Legs3Data, "maxHitPoints",	40);
ds_map_add(Legs3Data, "effectiveness",	1.3);
ds_map_add(Legs3Data, "repairCost",		80);
ds_map_add(Legs3Data, "upgradeCost",	80);

// Legs level 4
Legs4Data = ds_map_create();
ds_map_add(Legs4Data, "maxHitPoints",	45);
ds_map_add(Legs4Data, "effectiveness",	1.4);
ds_map_add(Legs4Data, "repairCost",		90);
ds_map_add(Legs4Data, "upgradeCost",	100);

// Legs level 5
Legs5Data = ds_map_create();
ds_map_add(Legs5Data, "maxHitPoints",	50);
ds_map_add(Legs5Data, "effectiveness",	1.5);
ds_map_add(Legs5Data, "repairCost",		100);
ds_map_add(Legs5Data, "upgradeCost",	120);

#endregion

#region //Case

// Case level 0
Case0Data = ds_map_create();
ds_map_add(Case0Data, "maxHitPoints",	25);
ds_map_add(Case0Data, "effectiveness",	1);
ds_map_add(Case0Data, "repairCost",		50);
ds_map_add(Case0Data, "upgradeCost",	0);

// Case level 1
Case1Data = ds_map_create();
ds_map_add(Case1Data, "maxHitPoints",	30);
ds_map_add(Case1Data, "effectiveness",	1.1);
ds_map_add(Case1Data, "repairCost",		60);
ds_map_add(Case1Data, "upgradeCost",	40);

// Case level 2
Case2Data = ds_map_create();
ds_map_add(Case2Data, "maxHitPoints",	35);
ds_map_add(Case2Data, "effectiveness",	1.2);
ds_map_add(Case2Data, "repairCost",		70);
ds_map_add(Case2Data, "upgradeCost",	60);

// Case level 3
Case3Data = ds_map_create();
ds_map_add(Case3Data, "maxHitPoints",	40);
ds_map_add(Case3Data, "effectiveness",	1.3);
ds_map_add(Case3Data, "repairCost",		80);
ds_map_add(Case3Data, "upgradeCost",	80);

// Case level 4
Case4Data = ds_map_create();
ds_map_add(Case4Data, "maxHitPoints",	45);
ds_map_add(Case4Data, "effectiveness",	1.4);
ds_map_add(Case4Data, "repairCost",		90);
ds_map_add(Case4Data, "upgradeCost",	100);

// Case level 5
Case5Data = ds_map_create();
ds_map_add(Case5Data, "maxHitPoints",	50);
ds_map_add(Case5Data, "effectiveness",	1.5);
ds_map_add(Case5Data, "repairCost",		100);
ds_map_add(Case5Data, "upgradeCost",	120);

#endregion

#region //Weapon

// Case level 0
Weapon0Data = ds_map_create();
ds_map_add(Weapon0Data, "maxHitPoints",	25);
ds_map_add(Weapon0Data, "effectiveness",1);
ds_map_add(Weapon0Data, "repairCost",	50);
ds_map_add(Weapon0Data, "upgradeCost",	0);

// Case level 1
Weapon1Data = ds_map_create();
ds_map_add(Weapon1Data, "maxHitPoints",	30);
ds_map_add(Weapon1Data, "effectiveness",1.1);
ds_map_add(Weapon1Data, "repairCost",	60);
ds_map_add(Weapon1Data, "upgradeCost",	40);

// Case level 2
Weapon2Data = ds_map_create();
ds_map_add(Weapon2Data, "maxHitPoints",	35);
ds_map_add(Weapon2Data, "effectiveness",1.2);
ds_map_add(Weapon2Data, "repairCost",	70);
ds_map_add(Weapon2Data, "upgradeCost",	60);

// Case level 3
Weapon3Data = ds_map_create();
ds_map_add(Weapon3Data, "maxHitPoints",	40);
ds_map_add(Weapon3Data, "effectiveness",1.3);
ds_map_add(Weapon3Data, "repairCost",	80);
ds_map_add(Weapon3Data, "upgradeCost",	80);

// Case level 4
Weapon4Data = ds_map_create();
ds_map_add(Weapon4Data, "maxHitPoints",	45);
ds_map_add(Weapon4Data, "effectiveness",1.4);
ds_map_add(Weapon4Data, "repairCost",	90);
ds_map_add(Weapon4Data, "upgradeCost",	100);

// Case level 5
Weapon5Data = ds_map_create();
ds_map_add(Weapon5Data, "maxHitPoints",	50);
ds_map_add(Weapon5Data, "effectiveness",1.5);
ds_map_add(Weapon5Data, "repairCost",	100);
ds_map_add(Weapon5Data, "upgradeCost",	120);

#endregion