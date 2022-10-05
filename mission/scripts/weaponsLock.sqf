waitUntil {local player};

LockedWeaponsList = createHashMapFromArray [
	["SL_Weapons_PG", createHashMapFromArray [ //PG
		["76561198111247884", true], //Masato(Юра)#4416
		["76561198326251846", true], //Mishler#5435
		["76561198149608739", true], //artpot#1420
//		["76561198144719792", true], //[104th] CPT 6363 Spok#3543
		["76561198013478090", true], //Hammel#6374
		["76561198867321683", true], //Rafinad#6345
		["76561198242248288", true], //🅶🆄🅺🅸 🆂🆄🅺🅸#0424
		["76561198269632376", true], //Dracula#0421
		["76561199063353466", true], //jyks30#7971
		["76561199072074129", true] //Adenn#7623
	]],
	["SL_Weapons_RNC", createHashMapFromArray [ //RNC
		["76561198209288675", true], //UnderShock#9124
		["76561198835782578", true], //Toss#4888
		["76561198147157120", true]
	]], 
	["slTeam_m10_m5_gl", createHashMapFromArray [ //WestarM10
	]], 
	["SLTEAM_SOBR_Westar51", createHashMapFromArray [ //WestarX01
	]],
	["Ambassador_Rifle", createHashMapFromArray [ // Ambassador_Nero
		["76561198121791135", true] // shi xe teo#3257 (Владелец доната)
	]],
	["Null_Verpine_Gun", createHashMapFromArray [ // Null Verpine
		["76561198136308916", true], // Prudii (Heerash#5665)
		["76561198335008125", true], // Mereel (GHOST#4206)
		["76561198257119473", true], // Aden (respikanger#8372)
		["76561198375697822", true], // Ordo (Brando#1614)
		["76561198412059906", true], // Kom'rk (Sumers(Никита)#5846)
		["76561198337362670", true] // Kal Skirata (SeeL#5873)
	]] 
];

LockedWeaponsListNames = createHashMapFromArray [
	["SL_Weapons_PG", "PG-140"],
	["SL_Weapons_RNC", "RNC"], 
	["slTeam_m10_m5_gl", "WestarM10"], 
	["SLTEAM_SOBR_Westar51", "WestarX01"], 
	["Ambassador_Rifle", "Ambassador_R"], 
	["Null_Verpine_Gun", "NullVerpine"]
];

["ace_arsenal_displayClosed",{
	_uid = getPlayerUID player;

	if (primaryWeapon player in LockedWeaponsList) then {
		if (!(_uid in (LockedWeaponsList get (primaryWeapon player)))) then {
			hint format ["Вы допустили потерю дорогостоящего обмундирования. Его стоимость будет вычтена из вашего жалованья, и вы будете служить, пока вам не исполнится пятьсот десять лет, потому что вам понадобится именно столько лет, чтобы оплатить комплект бластера %1, который вы потеряли! Свободны!", LockedWeaponsListNames get (primaryWeapon player)];
			player removeWeapon (primaryWeapon player);
		};
	};

	if (secondaryWeapon player in LockedWeaponsList) then {
		if(!(_uid in (LockedWeaponsList get (secondaryWeapon player)))) then {
			hint format ["Вы допустили потерю дорогостоящего обмундирования. Его стоимость будет вычтена из вашего жалованья, и вы будете служить, пока вам не исполнится пятьсот десять лет, потому что вам понадобится именно столько лет, чтобы оплатить комплект бластера %1, который вы потеряли! Свободны!", LockedWeaponsListNames get (secondaryWeapon player)];
			player removeWeapon (secondaryWeapon player);
		};
	};
	if (handgunWeapon player in LockedWeaponsList) then {
		if (!(_uid in (LockedWeaponsList get (handgunWeapon player)))) then {
			hint format ["Вы допустили потерю дорогостоящего обмундирования. Его стоимость будет вычтена из вашего жалованья, и вы будете служить, пока вам не исполнится пятьсот десять лет, потому что вам понадобится именно столько лет, чтобы оплатить комплект бластера %1, который вы потеряли! Свободны!", LockedWeaponsListNames get (handgunWeapon player)];
			player removeWeapon (handgunWeapon player);
		};
	};
}] call CBA_fnc_addEventHandler;

player addEventHandler ["Take", { 
	params ["_unit", "_container", "_item"];
	if (_item in LockedWeaponsList) then {
		_uid = getPlayerUID _unit; 
		if (!(_uid in (LockedWeaponsList get _item))) then {
			hint format ["Вы допустили потерю дорогостоящего обмундирования. Его стоимость будет вычтена из вашего жалованья, и вы будете служить, пока вам не исполнится пятьсот десять лет, потому что вам понадобится именно столько лет, чтобы оплатить комплект бластера %1, который вы потеряли! Свободны!", LockedWeaponsListNames get _item];
			_unit removeWeapon _item;
		}; 
	};
}];
