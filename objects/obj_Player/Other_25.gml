// Inherit the parent event
event_inherited();

draw_text(x, y, string(ammo) + " / " + string(maxAmmo) + " | " + string(reloadTimer / 60));