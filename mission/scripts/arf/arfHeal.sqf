_name = name player;
if (_name find "[ARF" != -1) then 
{
	while {true} do 
	{
		if ((alive player)) then 
		{
			_bodyParts = ["head", "body", "leftarm", "rightarm", "leftleg", "rightleg"];
			{
				_i = _foreachindex;
				if ((([player,"ElasticBandage",_i] call ace_medical_treatment_fnc_findMostEffectiveWound) select 2) != -1) then {
				//Injured
					[player, _x, "ElasticBandage"] call ace_medical_treatment_fnc_bandageLocal;
					_bv = player getVariable["ace_medical_bloodvolume", 6];
					player setVariable["ace_medical_bloodvolume", (_bv + 0.05) min 6, true];
					_pain = player getVariable["ace_medical_pain",0];
					player setVariable["ace_medical_pain", ((_pain - 0.025) max 0) min 1, true];
					//player setVariable["ace_medical_isLimping", false, true];
					sleep 7;
				} else {
				//Healthy
					_bv = player getVariable["ace_medical_bloodvolume", 6];
					player setVariable["ace_medical_bloodvolume", (_bv + 0.01) min 6, true];
					_pain = player getVariable["ace_medical_pain",0];
					player setVariable["ace_medical_pain", ((_pain - 0.01) max 0) min 1, true];
					//player setVariable["ace_medical_isLimping", false, true];
					sleep 2;
					if ( (_i == 4) || (_i == 5)) then {
						player setDamage 0;
					};
					if ((_i == 0) && (player getVariable ["KAT_medical_airwayStatus", 100] <= 95)) then {
						player setVariable ["KAT_medical_airwayOccluded", false, true];
						[player, player] call kat_airway_fnc_treatmentAdvanced_turnaroundHead;
						[player, player, "Larynxtubus"] call kat_airway_fnc_treatmentAdvanced_airwayLocal;
						sleep 2;
					};
					_bd = player getVariable["ace_medical_fractures", [0,0,0,0,0,0]];
					if ((_bd select _i) == 1) then {
						_bd set [_i, -1];
						sleep 9;
					};
				};
			} forEach _bodyParts;
			if (player getVariable["ace_medical_heartRate", 80] == 0) then {
				["ace_medical_CPRSucceeded", player] call CBA_fnc_localEvent;
				sleep 25;
			};
		};
	};
};