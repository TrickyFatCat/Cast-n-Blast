/// @param damage

var _damage = argument0;

if (hitPoints > 0)
{
	var _shieldDamage = 0;
	var _hitpointsDamage = _damage;
	
	if (shieldPoints > 0)
	{
		_shieldDamage = max(round(_damage * shieldFactor), 1);
		_hitpointsDamage = _damage - _shieldDamage;

		if (shieldPoints <= _shieldDamage)
		{
			_shieldDamage = shieldPoints;
			_hitpointsDamage = _damage - _shieldDamage;
		
		}
		
		show_debug_message(_shieldDamage);
		DecreaseShieldPoints(_shieldDamage);
	}
	
	DealDamage(_hitpointsDamage);
	EnableFlash(c_red, 1);
	ApplyShakeToCamera(true, 1);
	//PlaySound(sfx_impact);
}