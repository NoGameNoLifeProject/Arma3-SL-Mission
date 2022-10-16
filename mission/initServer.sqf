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

[west, 800, [
	
["3AS_Cover1",1],
["3AS_Cover2",2],
["3AS_Shield_3_prop",3],
["3AS_Shield_5_prop",4],
["land_3AS_Imperial_Tower",30],
["land_3AS_Wall_Laser_v2_Imperial",10],
["land_3AS_Wall_Laser_Door_v2_Imperial",10],
["ls_commandPost_republic_white",1],
["Land_HelipadCircle_F",1]

]] call acex_fortify_fnc_registerObjects;