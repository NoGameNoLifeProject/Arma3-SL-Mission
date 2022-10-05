waitUntil {local player};
_name = name player;
sleep 5;

HandRadiosTypes = createHashMapFromArray [
	["rd501_JLTS_clone_comlink", true],
	["JLTS_clone_comlink", true],
	["JLTS_clone_comlink_1", true],
	["SWLB_comlink", true],
	["ls_comlink_aur", true]
];

if ((_name find "327]" != -1) || (_name find "[327" != -1)) then {
	_frequence = missionNamespace getVariable ["327SW", "327"];
	_radio = call TFAR_fnc_activeSwRadio;
	[_radio, _frequence] call TFAR_fnc_setSwFrequency;

	if ((_name find "|DW" != -1) || (_name find "| DW" != -1)) then {
		_frequence = missionNamespace getVariable ["327DWSW", "327"];
		[_radio, 1] call TFAR_fnc_setAdditionalSwChannel;
		[_radio, 1, _frequence] call TFAR_fnc_SetChannelFrequency;
	};

	["ace_arsenal_displayClosed",{
		sleep 1;
		_name = name player;
		_frequence = missionNamespace getVariable ["327SW", "327"];
		_radio = call TFAR_fnc_activeSwRadio;
		[_radio, _frequence] call TFAR_fnc_setSwFrequency;
	
		if ((_name find "|DW" != -1) || (_name find "| DW" != -1)) then {
			_frequence = missionNamespace getVariable ["327DWSW", "327"];
			[_radio, 1] call TFAR_fnc_setAdditionalSwChannel;
			[_radio, 1, _frequence] call TFAR_fnc_SetChannelFrequency;
		};
	}] call CBA_fnc_addEventHandler;

	player addEventHandler ["Take", { 
		params ["_unit", "_container", "_item"];
		if (_item in HandRadiosTypes) then {
			sleep 1;
			_name = name _unit;
			_frequence = missionNamespace getVariable ["327SW", "327"];
			_radio = call TFAR_fnc_activeSwRadio;
			[_radio, _frequence] call TFAR_fnc_setSwFrequency;
		
			if ((_name find "|DW" != -1) || (_name find "| DW" != -1)) then {
				_frequence = missionNamespace getVariable ["327DWSW", "327"];
				[_radio, 1] call TFAR_fnc_setAdditionalSwChannel;
				[_radio, 1, _frequence] call TFAR_fnc_SetChannelFrequency;
			};
		};
	}];
};