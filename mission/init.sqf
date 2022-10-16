[] execVM "scripts\arsenal.sqf";
[] execVM "scripts\vehicle.sqf";
[] execVM "scripts\clearGroup.sqf";
[] execVM "scripts\MercMission.sqf";
[] execVM "scripts\smokeHeal.sqf";
[] execVM "scripts\ammoRecovery.sqf";
[] execVM "scripts\bots\bar\bar_security_merc_1.sqf";
[] execVM "scripts\bots\bar\bar_security_merc_2.sqf";
[] execVM "scripts\shadow\cloakLoop.sqf";

[true,30,false,true,30,3,true,[]] execVM "scripts\WerthlesHeadless.sqf";


cloak_uniform = ["JMSSL_CloneTrooper_shadow_F_CombatUniform","SLTEAM_Shadow_Toss_P2_Uniform","SLTEAM_Shadow_ZLOY_P2_Uniform","SLTEAM_Shadow_Fufel_P2_Uniform","SLTEAM_Shadow_Arhilles_P2_Uniform","SLTEAM_cadet_uni","SLTEAM_hunter_uni","SLTEAM_ins_uni","SLTEAM_gscmd_uni","SLTEAM_gs_uni","SLTEAM_saboteur_uni"];
cloak_headgear = ["JMSSL_Clonetrooper_P2_shadow_helmet","SLTEAM_helmet_gs","SLTEAM_helmet_gscmd","SLTEAM_helmet_cadet","SLTEAM_helmet_hunter","SLTEAM_helmet_saboteur"];

// Additional menu
yy_fnc_playerAddAction =
{
	// Маскировка Shadow
	player addAction ["<t color='#00FF00'>Включить маскировку</t>", "execVM 'scripts\shadow\activateInv.sqf'", [], 6, false, true,"","(vehicle player == player) && (uniform player in cloak_uniform)"];
	player addAction ["<t color='#FF0000'>Выключить маскировку</t>", "execVM 'scripts\shadow\deactivateInv.sqf'", [], 6, false, true,"","(vehicle player == player) && (uniform player in cloak_uniform)"];
	
};
//fnc_jump=call compile preprocessFile "fn_jump.sqf";
if(isNil "yy_fnc_hideObj") then
{
	yy_fnc_hideObj =
	{
		if (isPlayer param[0]) then
		{
			_cloakunit = _this select 0;
			_bool = _this select 1;
			_cloakunit hideObjectGlobal _bool;
			//_this setVariable["ACE_map_hideBlueForceMarker", _bool];
		};
	};
	publicVariable "yy_fnc_hideObj";
};

waitUntil{!(isNull player)};

call yy_fnc_playerAddAction;