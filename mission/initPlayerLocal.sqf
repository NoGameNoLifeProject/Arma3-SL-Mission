["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
2 cutText ["", "BLACK FADED", 10];
sleep 5;
2 cutText ["", "BLACK IN", 2.5];

waitUntil{!(isNull player)};
waitUntil{local player};
waitUntil {!isNull (findDisplay 46)};
[player] execVM "scripts\rank.sqf";

(owner player) publicVariableClient "getProfileId";
[] execVM "scripts\initPlayerClient.sqf";

[] execVM "scripts\hand_arf_rc.sqf";
[] execVM "scripts\hand_shadow_arc.sqf";
[] execVM "scripts\intro.sqf";
[] execVM "scripts\hudESP.sqf";
[] execVM "scripts\medMenu.sqf";
[] execVM "scripts\zeusList.sqf";
[] execVM "scripts\addAction.sqf";
[] execVM "scripts\terminalCG.sqf";
[] execVM "scripts\weaponsLock.sqf";
[] execVM "scripts\vehicleAction.sqf";
[] execVM "scripts\arf\arfHeal.sqf";
[] execVM "scripts\shadow\cloakLoop.sqf";
[] execVM "scripts\chatCommands.sqf";
[] execVM "scripts\removeFallDamage.sqf";
[] execVM "scripts\327sw.sqf";


enableEnvironment [false, true];