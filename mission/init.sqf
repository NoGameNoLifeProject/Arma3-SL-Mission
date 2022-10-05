[] execVM "scripts\arsenal.sqf";
[] execVM "scripts\vehicle.sqf";
[] execVM "scripts\clearGroup.sqf";
[] execVM "scripts\MercMission.sqf";
[] execVM "scripts\smokeHeal.sqf";
[] execVM "scripts\ammoRecovery.sqf";
[] execVM "scripts\bots\bar\bar_security_merc_1.sqf";
[] execVM "scripts\bots\bar\bar_security_merc_2.sqf";

[true,30,false,true,30,3,true,[]] execVM "scripts\WerthlesHeadless.sqf";

//Distance restriction
CHVD_allowNoGrass = true;