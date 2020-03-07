if (global.TimeFactor == 0)
{
	return;
}

var _number = instance_number(vfx_Dust);

if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(vfx_Dust, i);
		with (_effect)
		{
			ProcessDust();
		}
	}
}


_number = instance_number(vfx_Splatter);
if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(vfx_Splatter, i);
		with (_effect)
		{
			ProcessSplatter();
		}
	}
}

_number = instance_number(vfx_Trail);
if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(vfx_Trail, i);
		with (_effect)
		{
			ProcessTrail();
		}
	}
}
_number = instance_number(vfx_Limbs);
if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(vfx_Limbs, i);
		with (_effect)
		{
			ProcessLimbs();
		}
	}
}