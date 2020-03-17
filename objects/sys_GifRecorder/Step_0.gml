var _recordPressed = keyboard_check_pressed(vk_f1);
var _takeScreenShot = keyboard_check_pressed(vk_f2);

if (_recordPressed)
{
	if (!isRecording)
	{
		isRecording = true;
		
		gifImage = gif_open(global.CurrentWidth, global.CurrentHeight);
	}
	else
	{
		isRecording = false;
		
		var _gifPath = get_save_filename("Animated Gif|*.gif", "");
		
		if (_gifPath != "")
		{
			gif_save(gifImage, _gifPath);
		}
	}
}

if (isRecording)
{
	gif_add_surface(gifImage, application_surface, 2);
}

if (_takeScreenShot)
{
	var _screenShotPath = get_save_filename("ScreenShot|*.gif", "");
		
	if (_screenShotPath != "")
	{
		screen_save(_screenShotPath);
	}
}