ExtractionVehiclesType = createHashMapFromArray [
	["Car", true],
	["Tank", true],
	["Ship", true],
	["Helicopter", true],
	["Plane", true]
];

addMissionEventHandler ["EntityKilled", {
	params ["_killed", "_killer", "_instigator"];
	_entType = _killed call BIS_fnc_objectType;
	if (_entType select 1 in ExtractionVehiclesType) then {
		[_killed, "Вытащить экипаж/пассажиров", "", "", "vehicle player == player", "vehicle player == player", {[player, "ainvPknlMstpSnonWnonDnon_medic_1"] remoteExec ["playMoveNow", 0]}, {}, 
		{
			params ["_vehicle"];
			if (count crew _vehicle == 0) then 
			{
				hint "В технике пусто";
				sleep 2.5;
				hintSilent "";
			} else 
			{
				{moveOut _killed} forEach crew _vehicle
			}
		}, {[player, ""] remoteExec ["playMove", 0]}, [_killed], 6, 6, true, false] call BIS_fnc_holdActionAdd;
	};
}];