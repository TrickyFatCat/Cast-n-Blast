/// @description Global parameters

// Randomise seed
randomize();

// User events
#macro CheckPlayerControls	event_user(0)
#macro CheckMenuControls	event_user(1)
#macro ResetControls		event_user(2)

// Game states
enum GameState
{
	Transition,
	Active,
	Paused
}

global.GameState = GameState.Transition;

// Transition
global.Player = noone;
nextRoom = noone;
spawnX = 0;
spawnY = 0;

// Set controls
ResetControls;