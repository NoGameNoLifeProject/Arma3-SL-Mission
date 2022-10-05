player addEventHandler ["hit", 
{
	if (player getVariable ["_GiveCloak", 0] isEqualTo 1) then 
	{
		[player] remoteExec ["tts_cloak_fnc_removeCloak", player, false];
		player setVariable ["_GiveCloak", 0];
	};
}];

CloakUniform = createHashMapFromArray [
	["JMSSL_CloneTrooper_shadow_F_CombatUniform", true],
	["SLTEAM_Valeska_uni", true],
	["SLTEAM_cadet_uni", true], 
	["SLTEAM_assassin_uni", true], 
	["SLTEAM_hunter_uni", true], 
	["SLTEAM_ins_uni", true], 
	["SLTEAM_gscmd_uni", true], 
	["SLTEAM_gs_uni", true], 
	["SLTEAM_saboteur_uni", true],
	["SLTEAM_Shadow_Toss_P2_Uniform", true],
	["SLTEAM_Shadow_ZLOY_P2_Uniform", true],
	["JMSSL_Commando_bear_uni_w", true] // Да-да, Ванька ебу дал. Не блат а самодоверие.
];

while {true} do 
{
	if (uniform player in CloakUniform) then 
	{
		if (player getVariable ["_GiveCloak", 0] isEqualTo 0) then 
		{
			[player, 600, 30] remoteExec ["tts_cloak_fnc_giveCloak", player, false];
			player setVariable ["_GiveCloak", 1];
		};
	} else 
	{
		if (player getVariable ["_GiveCloak", 0] isEqualTo 1) then 
		{
			[player] remoteExec ["tts_cloak_fnc_removeCloak", player, false];
			player setVariable ["_GiveCloak", 0];
		};
	};
};

