EnableFlash(c_green, 1);
IncreaseHitPoints(1);
instance_destroy(other);
audio_play_sound(sfx_pickup, 50, false);
PlaySound(sfx_pickup);