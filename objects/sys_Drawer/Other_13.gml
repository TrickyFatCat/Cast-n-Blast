/// @description DrawSortableObjectsController

var _listSize = ds_list_size(drawListSortable);

for (var i = 0; i < _listSize; i++)
{
	var _object = drawListSortable[| i];
	with (_object)
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
}