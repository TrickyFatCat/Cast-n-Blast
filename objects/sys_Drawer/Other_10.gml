/// @description DrawFloorObjectsController

with(obj_FloorTile)
{
	ProcessDrawSprite();
}

with (obj_Floor)
{
	if (drawOutline)
	{
		shader_set(outlineShader);
		shader_set_uniform_f(u_texel_size, texel_w, texel_h);
		ProcessDrawSprite();
		shader_reset()
	}
	else
	{
		ProcessDrawSprite();
	}
}