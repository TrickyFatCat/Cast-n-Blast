/// @description CoreParameters

// User events

#region // Draw Parameters
isOnScreen = false;
drawScaleX = image_xscale;
drawScaleY = image_yscale;
drawAngle = image_angle;
drawColour = image_blend;
drawAlpha = image_alpha;
imageSpeedDefault = image_speed;
#endregion

#region // Shadow paramentrs
shadowEnabled = false;
shadowScaleX = 1.0;
shadowScaleY = 1.0;
shadowAlpha = 1.0;
#endregion

// Flash shader parameters
flashPower = 0.0;
flashColour = c_red;

// Dissolve shader parameters
dissolvePower = 0.0;
SetDissolveSettings(spr_dissolve_00, image_index, c_blue, c_navy, 0.2);

// Movement parameters
velocityX = 0.0;
velocityY = 0.0;

// Gravity immitation parameters
isJumping = false;
z = 0.0;
shadowMaxZ = 16;
velocityZ = 0.4;
offsetY = 0.0;
jumpInitialState = noone;

// Loot parameters
objectToSpawn = noone;