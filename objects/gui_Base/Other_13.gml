/// @description InterfaceDrawer

if (menuIsActive)
{
	draw_set_font(fnt_small);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);

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
			//_itemText = string_insert("> ", _itemText, 0);
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
		
		if (i == layoutItemIndex)
		{
			var _layoutText;
			switch (global.KeyboardLayout)
			{
				case KeyboardLayout.QWERTY:
					_layoutText = " QWERTY";
				break;
		
				case KeyboardLayout.AZERTY:
					_layoutText = " AZERTY";
				break;
		
				case KeyboardLayout.DVORAK:
					_layoutText = " DVORAK";
				break;
			}
			_itemText = string_insert(_layoutText, _itemText, 14);
		}
	
		var _x = menuX;
		var _y = menuY - (menuItemHeight * (i * 2.5));
	
		DrawTextOutline(_x, _y, c_black, _itemColour, _itemText, 2, 2);
	}
}