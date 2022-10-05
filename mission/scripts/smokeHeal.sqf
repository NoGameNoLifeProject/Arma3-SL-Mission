waitUntil {local player};

player addEventHandler ["Fired",{
	if ((_this select 4) isEqualTo "SmokeShellBlue") then
	{
		_grenadeObj = (_this select 6);
		_makeHealArea = [_grenadeObj] spawn
		{
			private ["_grenadePos","_grenadeObj","_list","_bodyParts","_timer", "_player"];
			_grenadeObj = (_this select 0);
			_timer = 60;
			_bodyParts = ["head", "body", "leftarm", "rightarm", "leftleg", "rightleg"];
			sleep 1;
			while {_timer > 0} do 
			{
				_grenadePos = getPosATL _grenadeObj;
				_list = _grenadePos nearEntities ["Man", 5];
				{
					_player = _x;
					{
						_i = _foreachindex;
						if ((([_player,"ElasticBandage",_i] call ace_medical_treatment_fnc_findMostEffectiveWound) select 2) != -1) then {
						//Injured
							[_player, _x, "ElasticBandage"] call ace_medical_treatment_fnc_bandageLocal;
							_bv = _player getVariable["ace_medical_bloodvolume", 6];
							_player setVariable["ace_medical_bloodvolume", (_bv + 0.05) min 6, true];
							_pain = _player getVariable["ace_medical_pain",0];
							_player setVariable["ace_medical_pain", ((_pain - 0.025) max 0) min 1, true];
						} else {
						//Healthy
							_bv = _player getVariable["ace_medical_bloodvolume", 6];
							_player setVariable["ace_medical_bloodvolume", (_bv + 0.01) min 6, true];
							_pain = _player getVariable["ace_medical_pain",0];
							_player setVariable["ace_medical_pain", ((_pain - 0.01) max 0) min 1, true];
							if ( (_i == 4) || (_i == 5)) then {
								_player setDamage 0;
							};
							if ((_i == 0) && (_player getVariable ["KAT_medical_airwayStatus", 100] <= 95)) then {
								_player setVariable ["KAT_medical_airwayOccluded", false, true];
								[_player, _player] call kat_airway_fnc_treatmentAdvanced_turnaroundHead;
								[_player, _player, "Larynxtubus"] call kat_airway_fnc_treatmentAdvanced_airwayLocal;
							};
							_bd = _player getVariable["ace_medical_fractures", [0,0,0,0,0,0]];
							if ((_bd select _i) == 1) then {
								_bd set [_i, -1];
							};
						};
					} forEach _bodyParts;
					if (_player getVariable["ace_medical_heartRate", 80] == 0) then {["ace_medical_CPRSucceeded", _player] call CBA_fnc_localEvent};
					sleep 1;
				} forEach _list;
				_timer = _timer - 1;
				sleep 1;
			};
		};
		if (isNull _grenadeObj || !alive _grenadeObj) then {terminate _makeHealArea};
	};
}];