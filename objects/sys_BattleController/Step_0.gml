/// @description BattleStateSwitcher

switch (global.BattleState)
{
	case BattleState.Inactive:
	break;
			
	case BattleState.Start:
		battleStartTimer += global.TimeFactor;
		soundTimer += global.TimeFactor;
		battlePauseTimer = 0;
		
		var _soundTime = SetTime(1);
		var _checkStartTimer = CheckTimer(battleStartTimer, battleStartTime);
		var _playSound = CheckTimer(soundTimer, _soundTime)
	
		//if (_playSound)
		//{
		//	PlaySound(sfx_timer);
		//	soundTimer = 0;
		//}
				
		if (_checkStartTimer)
		{
			battleStartTimer = 0;
			global.BattleState = BattleState.Active;
			//PlaySound(sfx_start);
		}
	break;
			
	case BattleState.Active:
		//if (!audio_is_playing(global.Music)) && (!audio_is_playing(sfx_start)) && global.Player.currentState < PlayerState.Transcendence
		//{
		//	global.Music = choose(bgm_battle00, bgm_battle01, bgm_battle02, bgm_battle03);
		//	audio_sound_gain(global.Music, 0, 0);
		//	audio_play_sound(global.Music, 1000, true);
		//	audio_sound_gain(global.Music, 0.5, 1500);
		//}
		
		global.PlayTime += global.TimeFactor;
		
		var _waveTimeIsOver = CheckTimer(global.PlayTime, roundTime);
		
		if (_waveTimeIsOver)
		{
			global.BattleState = BattleState.Intermission;
			ActivateInteractiveObjects();
		}
	break;
	
	case BattleState.Intermission:
		if (instance_number(obj_Enemy) == 0)
		{
			global.PlayTime = 0;
			battlePauseTimer += global.TimeFactor;
			var _timeIsOver = CheckTimer(battlePauseTimer, battlePauseTime);
			
			if (global.Player.hitPoints < global.Player.maxHitPoints)
			{
				global.Player.hitPoints = ApproachTimeFactor(global.Player.hitPoints, global.Player.maxHitPoints, 1);
			}				
			
			if (_timeIsOver)
			{
				global.BattleState = BattleState.Start;
				DeactivateInteractiveObjects();
				CalculateDifficulty();
				ChangeSpawnSettings();
				SetActivePerks();
			}
		}
	break;
			
	case BattleState.End:
		//if (!audio_is_playing(bgm_defeat))
		//{
		//	audio_play_sound(bgm_defeat, 0, false);
		//}
		gui_Base.currentState = InterfaceState.TransitionOut;
		global.BattleState = BattleState.Inactive;
	break;
}