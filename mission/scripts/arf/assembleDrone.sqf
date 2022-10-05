_droneList = ["B_UAV_01_F", "rd501_drone_razor_medical"];
_selectedPocket = "ACE_UAVBattery";
_selectedIndex = _this select 0;
_selected = _droneList select (_this select 0);
_arf_equipment = ["JLTS_Clone_jumppack_mc","SLTEAM_Nidus_arf_JT4","SLTEAM_Back_ARF_Werd","SLTEAM_JT7_ARF_Werd","SLTEAM_JT7_ARF_Night","SLTEAM_JT7_ARF_Forest","SLTEAM_JT7_ARF_Dirty","SLTEAM_Lutick_JT7","SLTEAM_Null_JT_White","SLTEAM_ARF_GHOST_JT7","SLTEAM_ARF_GHOST_BACKPACK","ToolKit"];
[
	4 + 2 * _selectedIndex,
	[player, _selected, _selectedPocket],
	{
		(_this select 0) params ["_player", "_droneType", "_droneItem"];
		private _drone = _droneType createVehicle (position _player);
		createVehicleCrew _drone;
        [_drone] spawn 
		{
            params ["_drone"];
            while {true} do 
			{
                if (missionNamespace getVariable ["ScanOn",false]) then 
				{
                    _pos = getPos _drone;
                    if ((_pos select 2) > 50) then 
					{
                        _list = _drone nearEntities [["Man", "Air", "Car", "Tank"], 4000];
                        missionNamespace setVariable ["DroneScanedUnits", _list, true];
                    } else {missionNamespace setVariable ["DroneScanedUnits", [], true]};
                };
                if (!alive _drone) then
				{
                    missionNamespace setVariable ["ScanOn",false,true];
                    missionNamespace setVariable ["DroneScanedUnits", [], true];
                    terminate (_this select 0);
                };
                sleep 10;
            };
        };
        _drone addAction ["Включить сканирование", {missionNamespace setVariable ["ScanOn",true, true]; },[],1,false,false,"","!(missionNamespace getVariable ['ScanOn',false])"];
        _drone addAction ["Выключить сканирование", {missionNamespace setVariable ["ScanOn",false, true]; missionNamespace setVariable ["DroneScanedUnits", [], true];},[],1,false,false,"","missionNamespace getVariable ['ScanOn',false]"];
		_drone setPos (_player modelToWorld [0,2,0.1]);
		[player, "PutDown"] call ace_common_fnc_doGesture;
	},
	{},
	"Сборка дрона..."
] call ace_common_fnc_progressBar;