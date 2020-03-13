/// @description DrawSortableObjectsController

var _listSize = ds_list_size(drawListSortable);

for (var i = 0; i < _listSize; i++)
{
	var _object = drawListSortable[| i];
	with (_object)
	{
		//if ( (x > (cameraPositionX - sprite_width / 2)) && (y > (cameraPositionY - sprite_height / 2)) && (x < (cameraPositionX + global.CurrentHeight + sprite_width / 2)) && (y < (cameraPositionY + global.CurrentHeight + sprite_height / 2)))
		//{
			if (drawOutline)
			{
				shader_set(outlineShader);
				shader_set_uniform_f(u_texel_size, texel_w, texel_h);
				DrawSprite;
				shader_reset()
			}
			else
			{
				if (blendEnabled)
				{
					gpu_set_blendmode(bm_add);
					draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, drawColour, drawAlpha);
					gpu_set_blendmode(bm_normal);
					draw_sprite_ext(spr_magicProjectileS_core, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, c_white, drawAlpha);
				}
				else
				{
					DrawSprite;
				}
			}
		//}
	}
}