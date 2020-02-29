global.GameData = id;

StorePlayerWeaponData();
StorePlayerAmmoData();
StorePerksData();
StoreEnemyWeaponData();
StoreWaveData();

enum ResourceType
{
	HitPoints,
	ShieldPoints,
	Dash,
	ManaPoints
}

global.ResourceColours = [];
global.ResourceColours[ResourceType.HitPoints]		= make_color_rgb(73, 170, 16);
global.ResourceColours[ResourceType.ShieldPoints]	= make_color_rgb(65, 97, 251);
global.ResourceColours[ResourceType.Dash]			= make_color_rgb(146, 211, 255); 
global.ResourceColours[ResourceType.ManaPoints]		= make_color_rgb(48, 81, 130);
