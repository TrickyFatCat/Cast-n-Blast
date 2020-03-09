/// @description InterfaceDrawer

if (menuIsActive)
{
	draw_set_font(fnt_small);
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_left);

	var _fullScreenText;
	var _fullScreen = window_get_fullscreen();

	if (_fullScreen)
	{
		_fullScreenText = " ON";
	}
	else
	{
		_fullScreenText = " OFF";
	}

	for (var i = 0; i < menuItemsCount; i++)
	{
		var _itemText = menuItem[i];
	
		if (menuActiveItem == i)
		{
			_itemText = string_insert("> ", _itemText, 0);
			var _itemColour = c_white;
		}
		else
		{
			var _itemColour = c_gray;
		}
	
		if (i == fullScreenItemIndex)
		{
			_itemText = string_insert(_fullScreenText, _itemText, 14);
		}
	
		var _x = menuX;
		var _y = menuY - (menuItemHeight * (i * 4));
	
		DrawTextOutline(_x, _y, c_black, _itemColour, _itemText, 2, 2);
	}
}