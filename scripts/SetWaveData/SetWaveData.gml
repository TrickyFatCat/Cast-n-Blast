/// @param index
/// @param wave
/// @param weight

var _index = argument0;
var _wave = argument1;
var _weight = argument2;

var _waveData = WriteWaveData(_index, _wave, _weight);

global.WaveData[_index] = _waveData;