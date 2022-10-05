removeAllActions JEDI_CON;
removeAllActions BSO_CON;
removeAllActions MERC_CON;
removeAllActions GAR_LAND_CON;
removeAllActions GAR_AIR_CON;
removeAllActions Shad_Con;

Shad_Veh = 
[
	["127th_laat_s_shadow", 1]
];

BSO_Vehicle = 
[
	["127th_LAAT_MKIV_SOB", 1],
	["127th_laat_s_shadow", 1],
	["SLTEAM_CWG_BEAR_LAAT_MK2_501", 1],
//	["SLTEAM_104_New_LAAT_MK2", 2],
//	["rd501_V19_mki", 2],
//	["rd501_Z95_Blue", 1],
//	["rd501_arc_170_Red", 1],
	["127th_LAAT_MKIV_M10", 1],
	["ls_ground_barc", 10],
	["RD501_fast_infantry_transport_republic", 5],
	["B_T_LSV_01_unarmed_F", 2]
];

Jedi_Vehicle = 
[
	["127th_eta_red_Mk2", 3],
	["127th_eta_yellow_Mk2", 3],
	["127th_eta_green_Mk2", 3],
	["127th_eta_lime_Mk2", 3],
	["127th_eta_grey_Mk2", 3],
	["127th_eta_ghost", 3],
	["127th_eta_blue_Mk2", 3]
];

GAR_Land_Vehicle =
[
	["ls_ground_barc", 10],
	["3AS_BarcSideCar", 10],
	["RD501_fast_infantry_transport_republic", 10],
	["3as_RTT", 5],
	["RD501_warden_tank_field", 2],
	["RD501_bantha_501st_MkI", 2],
	["212th_B_APC_Wheeled_unarmed_F", 4],
	["212th_B_APC_Wheeled_MG_F", 3],
	["slTeam_327_vehicle_bantha_501", 2],
	["3as_saber_m1", 2],
	["3as_saber_super", 2],
	["3as_AV7", 2],
	["3AS_RX200_Base", 2],
	["3AS_ATJT_Base", 2],
	["3as_ATTE_Base", 2],
	["3as_ATAP_base", 2]
];

GAR_Air_Vehicle =
[
	["127th_LAAT_MKIV", 5],
	["127th_LAAT_MKIII_Balls", 5],
	["127th_LAAT_MKV_MEDEVAC", 2],
	["127th_UGV_Tractor", 2],
	["rd501_LAAT_C", 2],
	["3AS_Nuclass", 1],
	["127th_v19_base", 5],
	["127th_Z95_Base", 5],
	["127th_arc_170_red", 5],
	["127th_arc_170_mkII", 2],
	["127th_v_wing", 5],
	["127th_Y_wing_MkII", 2],
	["127th_Y_Wing", 2]
];

Merc_Vehicle = 
[
	["MEOP_veh_ta62_BS_blue", 3],
	["RD501_z95_blue", 2],
	["RD501_v19_MKI", 2],
	["B_SDV_01_F", 3],
	["I_MRAP_03_F", 3],
	["O_MRAP_02_F", 3],
	["B_LSV_01_unarmed_F", 3],
	["C_SUV_01_F", 3],
	["C_Offroad_01_covered_F", 3],
	["C_Quadbike_01_F", 3],
	["MEOP_veh_Htruck_Civ", 3],
	["MEOP_veh_aerocar_Civ", 3],
	["MEOP_veh_kodiak_alliance", 3],
	["C_mako_m36arty_alWood_F", 3],
	["OPTRE_UNSC_hornet", 3]
];




BSO_CON addAction ["Обслуживание техники", 
{
	_veh = nearestObjects [BSO_AIR, ["car", "tank", "helicopter", "plane"], 15] select 0; 
	[_veh, 1] remoteExec ["setFuel", 0]; 
	[_veh, 0] remoteExec ["setDamage", 0]; 
	[_veh, 1] remoteExec ["setVehicleAmmo", 0]; 
}, [], 6, false, false, "", "side player == west", 5];

Shad_Con addAction ["Обслуживание техники", 
{
	_veh = nearestObjects [Shad_Air, ["car", "tank", "helicopter", "plane"], 15] select 0; 
	[_veh, 1] remoteExec ["setFuel", 0]; 
	[_veh, 0] remoteExec ["setDamage", 0]; 
	[_veh, 1] remoteExec ["setVehicleAmmo", 0]; 
}, [], 6, false, false, "", "side player == west", 5];


JEDI_CON addAction ["Обслуживание техники", 
{
	_veh = nearestObjects [Jedi_Air, ["car", "tank", "helicopter", "plane"], 15] select 0; 
	[_veh, 1] remoteExec ["setFuel", 0]; 
	[_veh, 0] remoteExec ["setDamage", 0]; 
	[_veh, 1] remoteExec ["setVehicleAmmo", 0]; 
}, [], 6, false, false, "", "side player == west", 5];


GAR_LAND_CON addAction ["Обслуживание техники", 
{
	_veh = nearestObjects [GAR_LAND, ["car", "tank", "helicopter", "plane"], 15] select 0; 
	[_veh, 1] remoteExec ["setFuel", 0]; 
	[_veh, 0] remoteExec ["setDamage", 0]; 
	[_veh, 1] remoteExec ["setVehicleAmmo", 0]; 
}, [], 6, false, false, "", "side player == west", 5];


GAR_AIR_CON addAction ["Обслуживание техники", 
{
	_veh = nearestObjects [GAR_AIR, ["car", "tank", "helicopter", "plane"], 15] select 0; 
	[_veh, 1] remoteExec ["setFuel", 0]; 
	[_veh, 0] remoteExec ["setDamage", 0]; 
	[_veh, 1] remoteExec ["setVehicleAmmo", 0]; 
}, [], 6, false, false, "", "side player == west", 5];



Shad_Con addAction ["Вернуть технику", 
{
	_pos = Shad_Air modelToWorld [0,0,0];
	_NearVeh = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15];
	{
		deleteVehicle _x;
		_curVeh = typeOf _x;
		_curVehVar = format ["%1_Var", _curVeh];
		_curVehHave = (Shad_Con getVariable [_curVehVar, 0]) + 1;
		[Shad_Con, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
	} forEach _NearVeh;
}, [], 1.5, false, false, "", "side player == west", 5];


{
	_curVeh = _x select 0;
	_curVehHave = _x select 1;
	_curVehVar = format ["%1_Var", _curVeh];
	if (Shad_Con getVariable ["conVehHave", 0] == 0) then 
	{
		[Shad_Con, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
		[Shad_Con, ["conVehHave", 2]] remoteExec ["setVariable", 0];
	};
	_vehName = getText (configfile >> "CfgVehicles" >> _curVeh >> "displayName");
	_title = format ["Вызвать %1", _vehName];
	Shad_Con addAction [_title, 
	{
		_curVehVar = _this select 3 select 2;
		if (Shad_Con getVariable [_curVehVar, 2] > 0) then 
		{
			_curVeh = _this select 3 select 0;
			_curVehHave = _this select 3 select 1;
			curVehHave = Shad_Con getVariable _curVehVar;
			[Shad_Con, [_curVehVar, curVehHave - 1]] remoteExec ["setVariable", 0];
			_pos = (getPosATL Shad_Air) vectorAdd [0,0,7];
			_spawnPos = [getpos Shad_Con select 0, getpos Shad_Con select 1, 50000]; 
			_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
			if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
			_veh = createVehicle [_curVeh, _spawnPos, [], 0, "NONE"]; 
			_veh setPos _pos;
		} else 
		{
			_vehName = _this select 3 select 3;
			hintSilent format ["%1 закончилась", _vehName];
			sleep 1.5;
			hintSilent "";
		};
	}, [_curVeh, _curVehHave, _curVehVar, _vehName], 1.5, false, false, "", "side player == west", 5];
} forEach Shad_Veh;


Jedi_CON addAction ["Вернуть технику", 
{
	_pos = Jedi_AIR modelToWorld [0,0,0];
	_NearVeh = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15];
	{
		deleteVehicle _x;
		_curVeh = typeOf _x;
		_curVehVar = format ["%1_Var", _curVeh];
		_curVehHave = (Jedi_CON getVariable [_curVehVar, 0]) + 1;
		[Jedi_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
	} forEach _NearVeh;
}, [], 1.5, false, false, "", "side player == west", 5];


{
	_curVeh = _x select 0;
	_curVehHave = _x select 1;
	_curVehVar = format ["%1_Var", _curVeh];
	if (Jedi_CON getVariable ["conVehHave", 0] == 0) then 
	{
		[Jedi_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
		[Jedi_CON, ["conVehHave", 2]] remoteExec ["setVariable", 0];
	};
	_vehName = getText (configfile >> "CfgVehicles" >> _curVeh >> "displayName");
	_title = format ["Вызвать %1", _vehName];
	Jedi_CON addAction [_title, 
	{
		_curVehVar = _this select 3 select 2;
		if (Jedi_CON getVariable [_curVehVar, 2] > 0) then 
		{
			_curVeh = _this select 3 select 0;
			_curVehHave = _this select 3 select 1;
			curVehHave = Jedi_CON getVariable _curVehVar;
			[Jedi_CON, [_curVehVar, curVehHave - 1]] remoteExec ["setVariable", 0];
			_pos = (getPosATL Jedi_AIR) vectorAdd [0,0,7];
			_spawnPos = [getpos Jedi_CON select 0, getpos Jedi_CON select 1, 50000]; 
			_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
			if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
			_veh = createVehicle [_curVeh, _spawnPos, [], 0, "NONE"]; 
			_veh setPos _pos;
		} else 
		{
			_vehName = _this select 3 select 3;
			hintSilent format ["%1 закончилась", _vehName];
			sleep 1.5;
			hintSilent "";
		};
	}, [_curVeh, _curVehHave, _curVehVar, _vehName], 1.5, false, false, "", "side player == west", 5];
} forEach Jedi_Vehicle;


Jedi_CON addAction ["Вызвать LAAT/i (M10)", 
{
	_pos = Jedi_air modelToWorld [0,0,0]; 
	_spawnPos = [getpos Jedi_CON select 0, getpos Jedi_CON select 1, 50000]; 
	_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
	if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
	_veh = createVehicle ["RD501_LAAT_MKIII_Balls", _spawnPos, [], 0, "NONE"]; 
	_veh setObjectTextureGlobal [0, "3as\3as_laat\laati\data\hull_arc_co.paa"]; 
	_veh setObjectTextureGlobal [1, "3as\3as_laat\laati\data\wings_arc_co.paa"]; 
	_veh setObjectTextureGlobal [2, "3as\3as_laat\laati\data\weapons_arc_co.paa"]; 
	_veh setPos _pos;
}, "", 1.5, false, false, "", "name player find 'M10' !=-1"];




BSO_CON addAction ["Вернуть технику", 
{
	_pos = BSO_AIR modelToWorld [0,0,0];
	_NearVeh = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15];
	{
		deleteVehicle _x;
		_curVeh = typeOf _x;
		_curVehVar = format ["%1_Var", _curVeh];
		_curVehHave = (BSO_CON getVariable [_curVehVar, 0]) + 1;
		[BSO_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
	} forEach _NearVeh;
}, [], 1.5, false, false, "", "side player == west", 5];


{
	_curVeh = _x select 0;
	_curVehHave = _x select 1;
	_curVehVar = format ["%1_Var", _curVeh];
	if (BSO_CON getVariable ["conVehHave", 0] == 0) then 
	{
		[BSO_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
		[BSO_CON, ["conVehHave", 2]] remoteExec ["setVariable", 0];
	};
	_vehName = getText (configfile >> "CfgVehicles" >> _curVeh >> "displayName");
	_title = format ["Вызвать %1", _vehName];
	BSO_CON addAction [_title, 
	{
		_curVehVar = _this select 3 select 2;
		if (BSO_CON getVariable [_curVehVar, 2] > 0) then 
		{
			_curVeh = _this select 3 select 0;
			_curVehHave = _this select 3 select 1;
			curVehHave = BSO_CON getVariable _curVehVar;
			[BSO_CON, [_curVehVar, curVehHave - 1]] remoteExec ["setVariable", 0];
			_pos = (getPosATL BSO_AIR) vectorAdd [0,0,7]; 
			_spawnPos = [getpos BSO_CON select 0, getpos BSO_CON select 1, 50000]; 
			_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
			if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
			_veh = createVehicle [_curVeh, _spawnPos, [], 0, "NONE"]; 
			_veh setPosATL _pos;
		} else 
		{
			_vehName = _this select 3 select 3;
			hintSilent format ["%1 закончилась", _vehName];
			sleep 1.5;
			hintSilent "";
		};
	}, [_curVeh, _curVehHave, _curVehVar, _vehName], 1.5, false, false, "", "side player == west", 5];
} forEach BSO_Vehicle;


BSO_CON addAction ["Вызвать LAAT/i (M10)", 
{
	_pos = BSO_AIR modelToWorld [0,0,7]; 
	_spawnPos = [getpos BSO_CON select 0, getpos BSO_CON select 1, 50000]; 
	_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
	if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
	_veh = createVehicle ["RD501_LAAT_MKIII_Balls", _spawnPos, [], 0, "NONE"]; 
	_veh setObjectTextureGlobal [0, "3as\3as_laat\laati\data\hull_arc_co.paa"]; 
	_veh setObjectTextureGlobal [1, "3as\3as_laat\laati\data\wings_arc_co.paa"]; 
	_veh setObjectTextureGlobal [2, "3as\3as_laat\laati\data\weapons_arc_co.paa"]; 
	_veh setPosATL _pos;
}, "", 1.5, false, false, "", "name player find 'M10' !=-1"];




GAR_LAND_CON addAction ["Вернуть технику", 
{
	_pos = GAR_LAND modelToWorld [0,0,0];
	_NearVeh = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15];
	{
		deleteVehicle _x;
		_curVeh = typeOf _x;
		_curVehVar = format ["%1_Var", _curVeh];
		_curVehHave = (GAR_LAND_CON getVariable [_curVehVar, 0]) + 1;
		[GAR_LAND_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
	} forEach _NearVeh;
}, [], 1.5, false, false, "", "side player == west", 5];


{
	_curVeh = _x select 0;
	_curVehHave = _x select 1;
	_curVehVar = format ["%1_Var", _curVeh];
	if (GAR_LAND_CON getVariable ["conVehHave", 0] == 0) then 
	{
		[GAR_LAND_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
		[GAR_LAND_CON, ["conVehHave", 2]] remoteExec ["setVariable", 0];
	};
	_vehName = getText (configfile >> "CfgVehicles" >> _curVeh >> "displayName");
	_title = format ["Вызвать %1", _vehName];
	GAR_LAND_CON addAction [_title, 
	{
		_curVehVar = _this select 3 select 2;
		if (GAR_LAND_CON getVariable [_curVehVar, 2] > 0) then 
		{
			_curVeh = _this select 3 select 0;
			_curVehHave = _this select 3 select 1;
			curVehHave = GAR_LAND_CON getVariable _curVehVar;
			[GAR_LAND_CON, [_curVehVar, curVehHave - 1]] remoteExec ["setVariable", 0];
			_pos = (getPosATL GAR_LAND) vectorAdd [0,0,7]; 
			_spawnPos = [getpos GAR_LAND_CON select 0, getpos GAR_LAND_CON select 1, 50000]; 
			_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
			if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
			_veh = createVehicle [_curVeh, _spawnPos, [], 0, "NONE"]; 
			_veh setPos _pos;
		} else 
		{
			_vehName = _this select 3 select 3;
			hintSilent format ["%1 закончилась", _vehName];
			sleep 1.5;
			hintSilent "";
		};
	}, [_curVeh, _curVehHave, _curVehVar, _vehName], 1.5, false, false, "", "side player == west", 5];
} forEach GAR_Land_Vehicle;




GAR_AIR_CON addAction ["Вернуть технику", 
{
	_pos = GAR_AIR modelToWorld [0,0,3];
	_NearVeh = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15];
	{
		deleteVehicle _x;
		_curVeh = typeOf _x;
		_curVehVar = format ["%1_Var", _curVeh];
		_curVehHave = (GAR_AIR_CON getVariable [_curVehVar, 0]) + 1;
		[GAR_AIR_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
	} forEach _NearVeh;
}, [], 1.5, false, false, "", "side player == west", 5];


{
	_curVeh = _x select 0;
	_curVehHave = _x select 1;
	_curVehVar = format ["%1_Var", _curVeh];
	if (GAR_AIR_CON getVariable ["conVehHave", 0] == 0) then 
	{
		[GAR_AIR_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
		[GAR_AIR_CON, ["conVehHave", 2]] remoteExec ["setVariable", 0];
	};
	_vehName = getText (configfile >> "CfgVehicles" >> _curVeh >> "displayName");
	_title = format ["Вызвать %1", _vehName];
	GAR_AIR_CON addAction [_title, 
	{
		_curVehVar = _this select 3 select 2;
		if (GAR_AIR_CON getVariable [_curVehVar, 2] > 0) then 
		{
			_curVeh = _this select 3 select 0;
			_curVehHave = _this select 3 select 1;
			curVehHave = GAR_AIR_CON getVariable _curVehVar;
			[GAR_AIR_CON, [_curVehVar, curVehHave - 1]] remoteExec ["setVariable", 0];
			_pos = (getPosATL GAR_AIR) vectorAdd [0,0,3];
			_spawnPos = [getpos GAR_AIR_CON select 0, getpos GAR_AIR_CON select 1, 50000]; 
			_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
			if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
			_veh = createVehicle [_curVeh, _spawnPos, [], 0, "NONE"]; 
			_veh setPosATL _pos;
		} else 
		{
			_vehName = _this select 3 select 3;
			hintSilent format ["%1 закончилась", _vehName];
			sleep 1.5;
			hintSilent "";
		};
	}, [_curVeh, _curVehHave, _curVehVar, _vehName], 1.5, false, false, "", "side player == west", 5];
} forEach GAR_Air_Vehicle;




MERC_CON addAction ["Вернуть технику", 
{
	_pos = MERC_AIR modelToWorld [0,0,0];
	_NearVeh = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15];
	{
		deleteVehicle _x;
		_curVeh = typeOf _x;
		_curVehVar = format ["%1_Var", _curVeh];
		_curVehHave = (MERC_CON getVariable [_curVehVar, 0]) + 1;
		[MERC_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
	} forEach _NearVeh;
}, [], 1.5, false, false, "", "side player == resistance", 5];


{
	_curVeh = _x select 0;
	_curVehHave = _x select 1;
	_curVehVar = format ["%1_Var", _curVeh];
	if (MERC_CON getVariable ["conVehHave", 0] == 0) then 
	{
		[MERC_CON, [_curVehVar, _curVehHave]] remoteExec ["setVariable", 0];
		[MERC_CON, ["conVehHave", 2]] remoteExec ["setVariable", 0];
	};
	_vehName = getText (configfile >> "CfgVehicles" >> _curVeh >> "displayName");
	_title = format ["Вызвать %1", _vehName];
	MERC_CON addAction [_title, 
	{
		_curVehVar = _this select 3 select 2;
		if (MERC_CON getVariable [_curVehVar, 2] > 0) then 
		{
			_curVeh = _this select 3 select 0;
			_curVehHave = _this select 3 select 1;
			curVehHave = MERC_CON getVariable _curVehVar;
			[MERC_CON, [_curVehVar, curVehHave - 1]] remoteExec ["setVariable", 0];
			_pos = MERC_AIR modelToWorld [0,0,0]; 
			_spawnPos = [getpos MERC_CON select 0, getpos MERC_CON select 1, 50000]; 
			_empty = nearestObjects [_pos, ["landVehicle", "Air", "Ship"], 15]; 
			if (!isNil "_empty") then {{deleteVehicle _x} forEach _empty}; 
			_veh = createVehicle [_curVeh, _spawnPos, [], 0, "NONE"]; 
			_veh setPos _pos;
		} else 
		{
			_vehName = _this select 3 select 3;
			hintSilent format ["%1 закончилась", _vehName];
			sleep 1.5;
			hintSilent "";
		};
	}, [_curVeh, _curVehHave, _curVehVar, _vehName], 1.5, false, false, "", "side player == resistance", 5];
} forEach Merc_Vehicle;