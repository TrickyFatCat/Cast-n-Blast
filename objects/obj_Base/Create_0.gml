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

// Movement parameters
velocityX = 0.0;
velocityY = 0.0;

// Gravity immitation parameters
isJumping = false;
z = 0.0;
shadowMaxZ = 32;
velocityZ = 0.4;
offsetY = 0.0;
jumpInitialState = noone;

// Loot parameters
objectToSpawn = noone;

isInvulnerable = false;
collisionEnable = true;

// Outline shader

if (drawOutline)
{
	var _tex = sprite_get_texture(sprite_index, 0);
	texel_w = texture_get_texel_width(_tex);
	texel_h = texture_get_texel_height(_tex);

	outlineShader = shd_Outline;

	u_texel_size = shader_get_uniform(outlineShader, "u_texel_size");
}