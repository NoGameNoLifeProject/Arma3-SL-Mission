removeAllActions ter;
ter addAction ["Изъять вещи", 
{
	params ["", "_caller"];
	_unit = (nearestObjects [ter, ["man"], 5]) - [_caller] select 0;
	_terBoxPos = (nearestObjects [terBox, [], 10]) - [terBox] select 0;
	if (_unit isKindOf "man" and !(_terBoxPos isKindOf "thing")) then
	{
		_box = createVehicle ["JLTS_Ammobox_support_GAR", getPos terBox, [], 1, "CAN_COLLIDE"];
		[_box, false] remoteExec ["allowDamage", 0];
		
		[_box] remoteExec ["clearItemCargo", 0];
		[_box] remoteExec ["clearWeaponCargo", 0];
		[_box] remoteExec ["clearMagazineCargo", 0];

		_primW = primaryWeapon _unit;
		_secW = secondaryWeapon _unit;
		_hanW = handgunWeapon _unit;
		_binW = binocular _unit;
		
		_unit action ["dropWeapon", _box, _primW];
		_unit action ["dropWeapon", _box, _secW];
		_unit action ["dropWeapon", _box, _hanW];
		_unit action ["dropWeapon", _box, _binW];

		sleep 3;
		
		_items = itemsWithMagazines _unit;

		_gog = goggles _unit;
		_head = headgear _unit;
		_back = backpack _unit;
		_vest = vest _unit;
		_uni = uniform _unit;
		_as = assignedItems _unit;

		removeAllItems _unit;
		removeAllAssignedItems _unit;
		removeAllContainers _unit;
		removeAllWeapons _unit;
		removeHeadgear _unit;
		removeGoggles _unit;

		_unit forceAddUniform "U_C_Driver_1_white";
		_unit additem "ACE_Humanitarian_Ration";
		_unit additem "ACE_WaterBottle";

		{_box addItemCargo [_x, 1]} forEach _items;
		{_box addItemCargo [_x, 1]} forEach _as;
		_box addItemCargo [_gog, 1];
		_box addItemCargo [_head, 1];
		_box addBackpackCargo [_back, 1];
		_box addItemCargo [_vest, 1];
		_box addItemCargo [_uni, 1];
	} else 
	{
		hintSilent "Площадка занята";
		sleep 3;
		hintSilent "";
	};
}, [], 1.5, true, false, "", "side player == west", 5];