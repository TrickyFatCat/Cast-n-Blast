/// @description ShootModeNormal

switch (bulletObjectParent)
{
	case obj_Projectile:
		if (isShooting) && (shootPauseIsOver)
		{
			SpawnProjectile;
			ExecuteAdditionalMechanics;
		}
	break;

	case obj_Hitscan:
		SetBulletTransform(hitscanObjects);
		if (isShooting) && (shootPauseIsOver)
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