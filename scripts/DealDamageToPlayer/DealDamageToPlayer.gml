/// @param damage

var _damage = argument0;

if (hitPoints > 0)
{
	var _shieldDamage = 0;
	var _hitpointsDamage = _damage;
	
	if (shieldPoints > 0)
	{
		_shieldDamage = max(ceil(_damage * shieldFactor), 1);
		_hitpointsDamage = 0;
		
		if (shieldPoints < _shieldDamage)
		{
			_hitpointsDamage = _damage - shieldPoints;
		}
	}
	
	show_debug_message("Total damage = " + string(_damage) + " | Shield damage = " + string(_shieldDamage) + " | Rusulted damage = " + string(_hitpointsDamage))
	DecreaseShieldPoints(_shieldDamage);
	DealDamage(_hitpointsDamage);
	EnableFlash(c_red, 1);
	ApplyShakeToCamera(true, 1);
	//PlaySound(sfx_impact);
}