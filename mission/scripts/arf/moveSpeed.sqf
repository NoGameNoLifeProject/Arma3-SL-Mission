_uid = getPlayerUID player;
_name = name player;
_ULTRA_UID = ["76561198132163681",""];

if (((_name find "[ARF" != -1) || (_uid in _ULTRA_UID)) && (alive player)) then {
	
	removeMissionEventHandler ["EachFrame",SKX_speedster];
	SKX_SpeedyON = player addAction ["<t color='#f4e541'>Speed ON</t>", 
	{
		params["_Speedy"];
		//["Speedy"] call ace_advanced_fatigue_fnc_removeDutyFactor;
		["Speedy",0.48] call ace_advanced_fatigue_fnc_addDutyFactor;	
		SKX_speedster = addMissionEventHandler ["EachFrame", 
		{
			player setAnimSpeedCoef 1.18;
		}];
		_speedy removeAction SKX_SpeedyON;
		
		SKX_SpeedyOFF = _Speedy addAction ["<t color='#f44167'>Speed OFF</t>",	
		{
			params["_Speedy"];

			["Speedy"] call ace_advanced_fatigue_fnc_removeDutyFactor;
			["Speedy",1] call ace_advanced_fatigue_fnc_addDutyFactor;

			_speedy removeAction SKX_SpeedyOFF;
			removeMissionEventHandler ["EachFrame",SKX_speedster];
			sleep 2;
			["Speedy"] call ace_advanced_fatigue_fnc_removeDutyFactor;	
			_speedy execVM "scripts\arf\moveSpeed.sqf";
			
		},[1],10,false,true,""];

	},[1],10,false,true,""];
};