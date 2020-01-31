/// @description GamepadConnectionHandler

switch(async_load[? "event_type"])          
{
	case "gamepad discovered":
	    var _gamepadSlot = async_load[? "pad_index"];
		
		if (gamepad_is_supported())
		{
			ds_list_add(connectedGamepads, _gamepadSlot);
			SetActiveGamepad(_gamepadSlot);
			global.CurrentInput = InputMethod.Gamepad;
		}
	break;
   
	case "gamepad lost":
		var _gamepadSlot = async_load[? "pad_index"];
		var _gamepadListIndex = ds_list_find_index(connectedGamepads, _gamepadSlot);

		ds_list_delete(connectedGamepads, _gamepadListIndex);
		
		var _listSize = ds_list_size(connectedGamepads);
		
		if (_listSize == 0)
		{
			global.ActiveGamepad = noone;
			global.CurrentInput = InputMethod.KeyboardMouse;
		}
		else if (_gamepadSlot == global.ActiveGamepad)
		{
			global.ActiveGamepad = connectedGamepads[| 0];
		}
	break;
}