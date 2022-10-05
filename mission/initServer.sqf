["Initialize", [true]] call BIS_fnc_dynamicGroups;

addMissionEventHandler ["EntityRespawned", {
	params ["_entity", "_corpse"];
	if (isPlayer _entity) then
	{
		_playerUID = getPlayerUID _entity;
		_result = ("ArmaMySQLExt" callExtension ["PlayerGetZeusState", [_playerUID]]) select 0;
		
		if (_result isEqualTo "1") then {
			_entity call SQL_fnc_assignCurator;
		};
	};
}];

missionNamespace setVariable ["327SW", random [100, 300, 500] toFixed 2, true];
missionNamespace setVariable ["327DWSW", random [100, 300, 500] toFixed 2, true];