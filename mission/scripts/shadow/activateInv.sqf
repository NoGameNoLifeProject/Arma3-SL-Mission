_name = name player;
_CloakThreshold=900;
_CloakMax=1800;
_curEnergy = player getVariable ["CloakEnergy", _CloakMax];
_CloakTimer = player getVariable ["CloakTimer", 0];
if (_name find "Shadow" != -1) then 
{
	if (_curEnergy <= _CloakThreshold) then 
	{
		hint parseText format ["<t color='#FF0000'>Недостаточно энергии</t>"];
		sleep 2.5;
		hintSilent "";
	} else 
	{
		if (time > _CloakTimer) then
		{
			player setVariable ['Cloak_on', true];
			player setVariable ['Cloak_Type', 'Shadow'];
			_unit = player;
			[player, true] remoteExec ["hideObjectGlobal", 0];
			player allowDamage true;
			player addEventHandler ["fired", 
			{
				if (player getVariable ['Cloak_on', false]) then {[] execVM 'scripts\shadow\deactivateInv.sqf'};
			}];
			player addEventHandler ["hit", 
			{
				params ["_unit", "_source", "_damage", "_instigator"];
				if (player getVariable ['Cloak_on', false]) then 
				{
					[] execVM 'scripts\shadow\deactivateInv.sqf';
					player setVariable ['CloakBroke', _damage + (player getVariable ['CloakBroke', 0]), true];
				};
			}];
			hint parseText format ["<t color='#00FF00'>Маскировка активирована</t>"];
			sleep 2.5;
			hintSilent "";
		} else 
		{
			hint parseText format ["<t color='#FF0000'>Охлаждение системы</t>"];
			sleep 2.5;
			hintSilent "";
		};
	};
} else 
{
	hint parseText format ["<t color='#FF0000'>ID не распознан</t>"];
	sleep 2.5;
	hintSilent "";
};
	