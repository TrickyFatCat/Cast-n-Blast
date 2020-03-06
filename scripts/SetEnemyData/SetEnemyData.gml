/// @param enemyIndex

var _enemyIndex = argument0;

var _enemyData = global.EnemyData[_enemyIndex];

maxHitPoints		= _enemyData[? EnemyParameter.MaxHitPoints];
maxVelocity			= _enemyData[? EnemyParameter.MaxVelocity];
scoreAdd			= _enemyData[? EnemyParameter.Scores];
hitPointsDrop		= _enemyData[? EnemyParameter.HitPointsDrop];
shieldPointsDrop	= _enemyData[? EnemyParameter.ShieldPointsDrop];
ultimatePointsDrop	= _enemyData[? EnemyParameter.UltimatePointsDrop] / 100;

hitPoints = maxHitPoints;