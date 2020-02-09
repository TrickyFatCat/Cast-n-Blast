var _listSize = ds_list_size(global.ChosenPerks);

if (_listSize > 0)
{
	var _perkId = irandom(_listSize);
	ActivatePerk(_perkId);
	return _perkId;
}
	