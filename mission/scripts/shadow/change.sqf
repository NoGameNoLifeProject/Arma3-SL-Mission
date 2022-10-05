if ((_this select 0) == 1) then 
{
	oldHelm = headgear player;
	oldUni = uniform player;
	oldVest = vest player;
	oldBackpack = backpack player;
	oldUniItems = uniformItems player;
	oldVestItems = vestItems player;
	oldBackpackItems = backpackItems player;
	
	player setVariable ["saved_headgear", headgear player];
	player setVariable ["saved_uniform", uniform player];
	player setVariable ["saved_vest", vest player];
	player setVariable ["saved_backpack", backpack player];
	
	player setVariable ["shadowCamo", true];
	_saved_headgear = (profileNamespace getVariable "Shadow_saved_headgear");
	if (typeName _saved_headgear == "STRING") then {player addHeadgear _saved_headgear};
	_saved_uniform = (profileNamespace getVariable "Shadow_saved_uniform");
	if (typeName _saved_uniform == "STRING") then {
		player forceAddUniform _saved_uniform;
		{player addItemToUniform _x} forEach oldUniItems;
	};
	_saved_vest = (profileNamespace getVariable "Shadow_saved_vest");
	if (typeName _saved_vest == "STRING") then {
		player AddVest _saved_vest;
		{player addItemToVest _x} forEach oldVestItems;
	};
	_saved_backpack = (profileNamespace getVariable "Shadow_saved_backpack");
	if (typeName _saved_backpack == "STRING") then {
		removeBackpack player;
		player addBackpack _saved_backpack;
		{player addItemToBackpack _x} forEach oldBackpackItems;
	};
	oldAction = player addAction ["Переключить маскировку", 
	{
		newUniItems = uniformItems player;
		newVestItems = vestItems player;
		newBackpackItems = backpackItems player;
		
		removeHeadgear player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		
		player addHeadgear oldHelm;
		player forceAddUniform oldUni;
		player AddVest oldVest;
		player addBackpack oldBackpack;
		
		{player addItemToUniform _x} forEach newUniItems;
		{player addItemToVest _x} forEach newVestItems;
		{player addItemToBackpack _x} forEach newBackpackItems;
		
		player removeAction oldAction;
		player setVariable ["shadowCamo", false];
	}, [], 6, false, true, "", "player getVariable ['shadowCamo', false] == true"];
} else 
{
	profileNamespace setVariable ["Shadow_saved_headgear", headgear player];
	profileNamespace setVariable ["Shadow_saved_uniform", uniform player];
	profileNamespace setVariable ["Shadow_saved_vest", vest player];
	profileNamespace setVariable ["Shadow_saved_backpack", backpack player];
	saveProfileNamespace;
};