/// @description Insert description here

draw_set_font(fnt_debug);

draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(2, 8, 300, 580, false);
draw_set_alpha(1);
draw_set_color(c_white);

#region //DisplayData

with (sys_DisplayManager)
{
	draw_set_color(c_red);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(5, 10, "DISPLAY PARAMETERS");
	draw_text(5, 20, "------------------");
	draw_text(5, 40, "Ideal Resolusion: " + string(global.IdealWidth) + " x " + string(global.IdealHeight));
	draw_text(5, 60, "Current Resolusion: " + string(global.CurrentWidth) + " x " + string(global.CurrentHeight));
	with (global.Camera)
	{
		draw_text(5, 100, "Camera Zoom: " + string(cameraZoom) + "/" + string(cameraZoomMax));
	}
	draw_text(5, 80, "Zoom: " + string(resolutionZoom) + "/" + string(resolutionZoomMax));
	draw_text(5, 120, "Interface Zoom: " + string(interfaceZoom) + "/5");
	draw_set_color(c_white);
}
#endregion

#region //Player Data
if (instance_exists(obj_Player))
{
	with (obj_Player)
	{
		draw_set_color(c_fuchsia);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(5, 150, "PLAYER PARAMETERS");
		draw_text(5, 160, "------------------");
		//var _state;
		//switch currentState
		//{
		//	case PlayerState.Spawn:
		//		_state = "Spawn";
		//	break;
			
		//	case PlayerState.Idle:
		//		_state = "Idle";
		//	break;
			
		//	case PlayerState.Run:
		//		_state = "Run";
		//	break;
			
		//	case PlayerState.Jump:
		//		_state = "Jump";
		//	break;
			
		//	case PlayerState.Dash:
		//		_state = "Dash";
		//	break;
			
		//	case PlayerState.Transcendence:
		//		_state = "Transcendence";
		//	break;
			
		//	case PlayerState.Death:
		//		_state = "Death";
		//	break;
		//}
		//draw_text(5, 180, "Current State: " + _state);
		draw_text(5, 180, "Hit Points: " + string(hitPoints) + "/" + string(maxHitPoints));
		draw_text(5, 200, "Legs " + string(legsLevel) + "/" + string(legsMaxLevel) + ": " + string(legsHitPoints) + "/" + string(legsMaxHitPoints));
		draw_text(5, 220, "Case " + string(caseLevel) + "/" + string(caseMaxLevel) + ": " + string(caseHitPoints) + "/" + string(caseMaxHitPoints));
		draw_text(5, 240, "Weapon " + string(weaponLevel) + "/" + string(weaponMaxLevel) + ": " + string(weaponHitPoints) + "/" + string(weaponMaxHitPoints));
		draw_text(5, 260, "Energy: " + string(energy) + "/" + string(maxEnergy));
		//draw_text(5, 240, "Current Ammo: " + string(ammoCurrent) + "/" + string(ammoCurrentMax));
		//var _isShooting;
		//if (activeWeapon.isShooting)
		//{
		//	_isShooting = "True";
		//}
		//else
		//{
		//	_isShooting = "False";
		//}
		//draw_text(5, 240, "Is shooting: " + _isShooting);
		//draw_text(5, 240, "WeaponROF: " + string(activeWeapon.rateOfFireCurrent));
		//draw_text(5, 260, "WeaponID: " + string(weaponID) + " | AmmoID: " + string(ammoID));
		//draw_set_color(c_white);
	}
}
#endregion

//#region //Game Data
if (instance_exists(sys_GameManager))
{
	with (sys_GameManager)
	{
		draw_set_color(c_lime);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(5, 300, "GAME PARAMETERS");
		draw_text(5, 310, "------------------");
		draw_text(5, 320, "Timefactor: " + string(global.TimeFactor));
		var _state;
		switch global.GameState
		{
			case GameState.Transition:
				_state = "Transiton";
			break;
			
			case GameState.Active:
				_state = "Active";
			break;
			
			case GameState.Paused:
				_state = "Paused";
			break;
		}
		draw_text(5, 340, "Current State: " + _state);
	}
}

if (instance_exists(sys_BattleController))
{
	with (sys_BattleController)
	{
		var _state;
		switch global.BattleState
		{
			case BattleState.Inactive:
				_state = "Inactive";
			break;
			
			case BattleState.Start:
				_state = "Start";
			break;
			
			case BattleState.Active:
				_state = "Active";
			break;
			
			case BattleState.Intermission:
				_state = "Pause";
			break;
			
			case BattleState.End:
				_state = "End";
			break;
		}
		draw_text(5, 360, "Battle State: " + _state);
		draw_text(5, 380, "Battle Time: " + string(global.PlayTime / 60));
		draw_text(5, 400, "Battle Start Time: " + string(battleStartTimer / 60));
		draw_text(5, 420, "Battle Pause Time: " + string(battlePauseTimer / 60));
	}
}
//#endregion
	
//#region // Input data (need to update)
////		draw_set_color(c_orange);
////		draw_text(5, 370, "GAME CONTROLS");
////		draw_text(5, 380, "------------------");
////		var _input;
////		switch global.CurrentInput
////		{			
////			case InputMethod.Gamepad:
////				_input = "Gamepad";
////			break;
			
////			case InputMethod.KeyboardMouse:
////				_input = "Keyboard";
////			break;
////		}
////		draw_text(5, 400, "Input Method: " + _input);
////		var _gamepadModel;
////		draw_text(5, 420, "Active gamepad " + string(global.ActiveGamepad))
		
////		//if (gamepad_is_connected(global.ActiveGamepad))
////		//{
////		//	_gamepadSlot = string(global.ActiveGamepad);
////		//	_gamepadModel = string(gamepad_get_description(global.ActiveGamepad));
////		//}
////		//else
////		//{
////		//	_gamepadSlot = "NOT FOUND";
////		//	_gamepadModel = "NOT FOUND";
////		//}
////		for (var i = 0; i < gamepad_get_device_count(); i++)
////		{
////			if (gamepad_is_connected(i))
////			{
////				_gamepadModel = string(gamepad_get_description(i));
////			}
////			else
////			{
////				_gamepadModel = "NOT FOUND";
////			}
////			draw_text(5, 440 + i * 20, "Gamepad Slot " + string(i) + ": " + _gamepadModel);
////		}
////		draw_set_color(c_white);
////	}
////}
//#endregion

//// Gifrecorder Data
////if (instance_exists(obj_gifRecorder))
////{
////	with (obj_gifRecorder)
////	{
////		draw_set_color(c_olive);
////		draw_set_halign(fa_left);
////		draw_set_valign(fa_top);
////		draw_text(5, 530, "RECORDING INFO");
////		draw_text(5, 540, "------------------");
////		var _recordingEnabled;
////		if (isRecording)
////		{
////			_recordingEnabled = "ON";
////		}
////		else
////		{
////			_recordingEnabled = "OFF";
////		}
////		draw_text(5, 560, "GIF Recording is " + _recordingEnabled);
////	}
////}