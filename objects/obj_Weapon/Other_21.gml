/// @description ShootModeNormal

switch (bulletObjectParent)
{
	case obj_Projectile:
		if (isShooting) && (checkShootPause)
		{
			SpawnProjectile;
			ExecuteAdditionalMechanics;
		}
	break;

	case obj_Hitscan:
		SetBulletTransform(hitscanObjects);
		if (isShooting) && (checkShootPause)
		{
			EnableHitscan;
			ExecuteAdditionalMechanics;
		}
	break;

	case obj_Laser:
		CalculateLaserSpread;
		SetLaserState;
		SwithchLaserDamage;
	break;
}