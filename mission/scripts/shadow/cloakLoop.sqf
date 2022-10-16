<<<<<<< Updated upstream
player addEventHandler ["hit", 
{
	if (player getVariable ["_GiveCloak", 0] isEqualTo 1) then 
	{
		[player] remoteExec ["tts_cloak_fnc_removeCloak", player, false];
		player setVariable ["_GiveCloak", 0];
=======
CloakTypes = ["Shadow", "JM"];
CloakMax = [1800, 600];
CloakRateOn = [-1, -1];
CloakRateOff = [5, 3];
CloakBreakCost = [10, 20];
CloakThreshold = [900, 300];
cloak_uniform = ["JMSSL_CloneTrooper_shadow_F_CombatUniform","SLTEAM_gs_uni","SLTEAM_gscmd_uni","SLTEAM_Shadow_Toss_P2_Uniform","SLTEAM_Shadow_ZLOY_P2_Uniform","SLTEAM_Shadow_Fufel_P2_Uniform","SLTEAM_Shadow_Arhilles_P2_Uniform","SLTEAM_cadet_uni","SLTEAM_hunter_uni","SLTEAM_ins_uni","SLTEAM_saboteur_uni"];
_uid = getPlayerUID player;

disableSerialization;
while{true} do {
    _cloakEnergyCtrl = (findDisplay 46) displayCtrl 9002;
	if(isNull(_cloakEnergyCtrl)) then {
		_cloakEnergyCtrl = (findDisplay 46) ctrlCreate ["RscText", 9002];
		_cloakEnergyCtrl ctrlSetPosition [SafeZoneXAbs + SafeZoneW * 0.85, SafeZoneY + (SafeZoneH - 0.05) / 2, 0.3, 0.03];
		_cloakEnergyCtrl ctrlSetFontHeight 0.04;
		_cloakEnergyCtrl ctrlCommit 0;
>>>>>>> Stashed changes
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

