/// @param targetObject
/// @param script

var _target = argument0;
var _script = argument1;
var _number = instance_number(_target);

if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _object = instance_find(_target, i);
		
		with (_object)
		{
			script_execute(asset_get_index(_script));
		}
	}
}