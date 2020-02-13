/// @description DrawFloorObjectsController

with(obj_FloorTile)
{
	DrawSprite;
}

with (obj_Floor)
{
	if (drawOutline)
	{
		shader_set(outlineShader);
		shader_set_uniform_f(u_texel_size, texel_w, texel_h);
		DrawSprite;
		shader_reset()
	}
	else
	{
		DrawSprite;
	}
}