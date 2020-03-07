/// @param currentDrawPosition

var _sortingType = argument0;
var _listSize = ds_list_size(drawListUnsortable);

for (var i = 0; i < _listSize; i++)
{
	var _object = drawListUnsortable[| i];
	with (_object)
	{
		if (sortingType == _sortingType)
		{
			if (drawOutline)
			{
				shader_set(outlineShader);
				shader_set_uniform_f(u_texel_size, texel_w, texel_h);
				DrawSprite;
				shader_reset();
			}
			else
			{
				DrawSprite;
			}
		}
	}
}