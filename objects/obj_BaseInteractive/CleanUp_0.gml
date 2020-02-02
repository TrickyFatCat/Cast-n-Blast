if (ds_exists(global.InteractiveObjects, ds_type_list))
{
	ds_list_destroy(global.InteractiveObjects);
}