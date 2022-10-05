/*
Chetchk_cvest = missionNamespace getVariable ["Chetchk_cvest", 0];
Status_cvest = missionNamespace getVariable ["Status_cvest", false];

Talk_Merc = {
Merc_contract addAction [
"<img size = '1.2' image='\A3\ui_f\data\igui\cfg\simpletasks\types\meet_ca.paa'></img>"
+"<t font='PuristaLight' size = '1'> Узнать, cколько у меня торговых жетонов.</t>",
{
	if ((format ["%1", profileNamespace getVariable "CELL_Reputation"]) == "<null>") then {
	titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя приятель ноль жетонов, выполняй контракты и со временем ты сможешь получить редкие стволы, экипировку, транспорт.</t>","plain down",2,true,true];
	profileNamespace setVariable ["CELL_Reputation",0]; 
	saveProfileNamespace;
	} else {
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Количество торговых жетонов, "+(format ["%1", profileNamespace getVariable "CELL_Reputation"])+" шт.</t>","plain down",2,true,true];
	};
},nil,1,true,false,"","",3];

Merc_contract addAction [
"<img size = '1.2' image='\A3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa'></img>"
+"<t font='PuristaLight' size = '1'> Магазин.</t>",
{
	removeAllActions Merc_contract;
	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'>Оружие:</t>",
	{},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> Valken38X (20 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 20) then {
		player addWeapon "212th_3AS_Valken38X";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-20)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> M393 DMR (25 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 25) then {
		player addWeapon "OPTRE_M393_DMR";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-25)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе. И запомни, это пушка стреляет только трасерами.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> Particle rifle (30 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 30) then {
		player addWeapon "MEOP_particlerifle";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-30)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе. И запомни, это пушка стреляет только трасерами.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> M-97 Viper (40 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 40) then {
		player addWeapon "MEOP_m97Rifle";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-40)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> DC-15X (40 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 40) then {
		player addWeapon "RD501_DC_r15x";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-40)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> E5-S (60 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 60) then {
		player addWeapon "3AS_E5S_F";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-60)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'>Амуниция:</t>",
	{},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> |.. JT-13 (80 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 80) then {
		player addBackpack "JMSSL_JT13_base_B";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-80)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> ||| Комплект брони 'Ворон-A' (200 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 200) then {
		player addHeadgear "OPTRE_UNSC_VX16_Helmet_Mask";
		player forceaddUniform "Hum_DragoonForm_black_F_CombatUniform";
		player addVest "OPTRE_UNSC_M52A_Armor2_URB";
		player addBackpack "OPTRE_ILCS_Rucksack_Black";
		player addGoggles "G_Balaclava_TI_G_blk_F";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-200)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> ||| Комплект брони 'Страж' (250 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 250) then {
		player addHeadgear "Hum_Dragoon_black_helmet";
		player forceaddUniform "Hum_DragoonForm_black_F_CombatUniform";
		player addVest "Hum_Dragoon_armor_v2";
		player addBackpack "OPTRE_ILCS_Rucksack_Black";
		player addGoggles "G_Balaclava_TI_G_blk_F";
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-250)]; 
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Спасибо за покупку… хе-хе-хе.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'>Расходники:</t>",
	{},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'> Персональный щит (2 жетонов)</t>",
	{
		if ((profileNamespace getVariable "CELL_Reputation") >= 2) then {
		Stat_shield = true;
		(findDisplay 46) displayaddEventHandler ["KeyDown","

			if (((_this select 1) == 60) && (Stat_shield == true)) then {
				a = ""RD501_Droideka_Shield"" createVehicle position player;
				a attachTo [player, [0,0,1]];
				Stat_shield = false;
				[[a],{
					(_this select 0) say3D [""OPTRE_holotable_on"", 200];
				}] remoteExec [""spawn"", 0]; 
				[[a],{
					sleep 60;
					deleteVehicle (_this select 0);
				}] remoteExec [""spawn"", 2];
				[] spawn {
					sleep 180;
					Stat_shield = true;
					titleText [
					""<t font='PuristaLight' align='right' size='1'>[Helmet Interface] Статистика операции:</t>"" + ""<br/>"" + ""<br/>"" +
					""<t font='PuristaLight' align='right' size='1.2'>Щит готов.</t>""
					, ""plain down"",1,true,true];
				};
			};
		"];
		profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")-2)];
		saveProfileNamespace;
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Это временный персональный щит. Включается на кнопку «F2» в КПК, заряда хватает на минуту от силы, дальше он уходит на подзаряди и через пять минут снова готов к использованию.</t>","plain down",2,true,true];
		} else {
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - У тебя не хватает братан.</t>","plain down",2,true,true];
		};
	},nil,1,true,false,"","",3];

	Merc_contract addAction [
	"<t font='PuristaLight' size = '1'>Назад.</t>",
	{
		removeAllActions Merc_contract;
		call Talk_Merc;
	},nil,1,true,false,"","",3];
},nil,1,true,false,"","",3];
















Merc_contract addAction [
"<img size = '1.2' image='\a3\ui_f\data\igui\cfg\simpletasks\types\Talk_ca.paa'></img>"
+"<t font='PuristaLight' size = '1'> Взять контракт.</t>",
{
	Post_cwest_chek = {
		Post_cwest = [[[position player, (random [3000,7000,15000])]],[]] call BIS_fnc_randomPos;
		if (surfaceIsWater Post_cwest == true) then {
			call Post_cwest_chek;
		};
	};

	if (Chetchk_cvest <= 3) then {
		if (Status_cvest == false) then {
		Type_cvest = [1,2] call BIS_fnc_selectRandom;

		if (Type_cvest == 1) then {
			call Post_cwest_chek;
			titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Так твоя задача, найти контейнер и принести его содержимое. Метка уже стоит на карте, на выполнение даю полчаса.</t>","plain down",2,true,true];
			deleteMarker "cell1";
			deleteMarker "cell2";
			createMarker ["cell1",Post_cwest];
			"cell1" setMarkerShape "ellipse";
			"cell1" setMarkerType "ellipse";
			"cell1" setMarkerBrush "fdiagonal";
			"cell1" setMarkerSize [150,150];
			"cell1" setMarkerColor "ColorOPFOR";
			createMarker ["cell2", Post_cwest];
			"cell2" setMarkerType "hd_dot";
			"cell2" setMarkerText "Примерная зона поиска (CELL)";
			Post_cwest2 = [[[Post_cwest, (random [50,100,150])]],[]] call BIS_fnc_randomPos;
			cvest_it = "Land_PlasticCase_01_small_black_CBRN_F" createVehicle Post_cwest2;
			[[],{
			cvest_it addItemCargo ["hgun_esd_01_F",1];
			cvest_it addItemCargo ["JLTS_intel_trackingFob",1];
			cvest_it addItemCargo ["JLTS_intel_holoProjector",1];
			cvest_it addItemCargo ["ACE_DAGR",1];
			}] remoteExec ["call"];
			
			Type_unit_cvest = [1,2,1,2,1,1,1,3,1,3] call BIS_fnc_selectRandom;
			if (Type_unit_cvest == 2) then {
				[Merc_contract] spawn {
					resistance setFriend [civilian, 0];
					civilian setFriend [resistance, 0];
					blufor setFriend [civilian, 0];
					civilian setFriend [blufor, 0];

						Cell_un_Group = createGroup civilian; 
						Cell_un_1 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_1 setSkill 1; 
						Cell_un_1 setRank 'PRIVATE'; 
						Cell_un_1 setFormDir 0; 
						Cell_un_1 setDir 0; 
						Cell_un_1 setPosWorld Post_cwest2;
						publicVariable "Cell_un_1";

						Cell_un_1 addWeapon "JLTS_E5C";
						Cell_un_1 addHeadgear "Tur_Hastat_helmet_black";
						Cell_un_1 forceaddUniform "TurianSuit2_h_black_CombatUniform";
						Cell_un_1 addVest "Tur_BlueSunsBlack_armor";
						Cell_un_1 addBackpack "Tur_back_medium_black_v1";
						Cell_un_1 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_1 addMagazineGlobal "JLTS_E5C_mag";

						Cell_un_1 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_1 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_1 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];

						mars_unti_cell = {
    							if ((count waypoints Cell_un_1) >= 80) then {
    
    							} else {
      							  v_unti_cell = group Cell_un_1 addWaypoint [Post_cwest, 100];
      							  v_unti_cell setWaypointStatements ["true", "call mars_unti_cell;"];
    							};
						};
						call mars_unti_cell;
						sleep 2;
						Cell_un_2 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_2 setSkill 1; 
						Cell_un_2 setRank 'PRIVATE'; 
						Cell_un_2 setFormDir 75; 
						Cell_un_2 setDir 75; 
						Cell_un_2 setPosWorld Post_cwest2;
						publicVariable "Cell_un_2";

						Cell_un_2 addWeapon "JLTS_E5C";
						Cell_un_2 addHeadgear "Tur_Hastat_helmet_black";
						Cell_un_2 forceaddUniform "TurianSuit2_h_black_CombatUniform";
						Cell_un_2 addVest "Tur_BlueSunsBlack_armor";
						Cell_un_2 addBackpack "Tur_back_medium_black_v1";
						Cell_un_2 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_2 addMagazineGlobal "JLTS_E5C_mag";

						Cell_un_2 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_2 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_2 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_3 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_3 setSkill 1; 
						Cell_un_3 setRank 'PRIVATE'; 
						Cell_un_3 setFormDir 285; 
						Cell_un_3 setDir 285; 
						Cell_un_3 setPosWorld Post_cwest2;
						publicVariable "Cell_un_3";

						Cell_un_3 addWeapon "JLTS_E5";
						Cell_un_3 addHeadgear "H_PASGT_basic_black_F";
						Cell_un_3 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_3 addVest "V_PlateCarrier2_blk";
						Cell_un_3 addBackpack " ";
						Cell_un_3 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_3 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_3 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_3 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_3 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_4 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_4 setSkill 1; 
						Cell_un_4 setRank 'PRIVATE'; 
						Cell_un_4 setFormDir 330; 
						Cell_un_4 setDir 330; 
						Cell_un_4 setPosWorld Post_cwest2;
						publicVariable "Cell_un_4";

						Cell_un_4 addWeapon "JLTS_E5";
						Cell_un_4 addHeadgear "H_PASGT_basic_black_F";
						Cell_un_4 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_4 addVest "V_PlateCarrier2_blk";
						Cell_un_4 addBackpack " ";
						Cell_un_4 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_4 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_4 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_4 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_4 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_5 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_5 setSkill 1; 
						Cell_un_5 setRank 'PRIVATE'; 
						Cell_un_5 setFormDir 75; 
						Cell_un_5 setDir 75; 
						Cell_un_5 setPosWorld Post_cwest2;
						publicVariable "Cell_un_5";

						Cell_un_5 addWeapon "JLTS_E5";
						Cell_un_5 addHeadgear "H_PASGT_basic_black_F";
						Cell_un_5 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_5 addVest "V_PlateCarrier2_blk";
						Cell_un_5 addBackpack " ";
						Cell_un_5 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_5 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_5 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_5 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_5 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_6 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_6 setSkill 1; 
						Cell_un_6 setRank 'PRIVATE';
						Cell_un_6 setFormDir 285; 
						Cell_un_6 setDir 285; 
						Cell_un_6 setPosWorld Post_cwest2;
						publicVariable "Cell_un_6";

						Cell_un_6 addWeapon "JLTS_E5";
						Cell_un_6 addHeadgear "Bat_oxymask_black";
						Cell_un_6 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_6 addVest "Hum_Smug_heavy_black_armor_v1";
						Cell_un_6 addBackpack " ";
						Cell_un_6 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_6 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_6 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_6 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.3));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_6 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						Cell_un_Group setFormation 'DIAMOND'; 
						Cell_un_Group setCombatMode 'YELLOW'; 
						Cell_un_Group setBehaviour 'AWARE'; 
						Cell_un_Group setSpeedMode 'NORMAL';
					};
			} else {
				if (Type_unit_cvest == 3) then {
					[Merc_contract] spawn {
					resistance setFriend [civilian, 0];
					civilian setFriend [resistance, 0];
					blufor setFriend [civilian, 0];
					civilian setFriend [blufor, 0];

					Cell_un_Group = createGroup civilian; 
							Cell_un_1 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_1 setSkill 1; 
							Cell_un_1 setRank 'PRIVATE'; 
							Cell_un_1 setFormDir 0; 
							Cell_un_1 setDir 0; 
							Cell_un_1 setPosWorld Post_cwest2;
							publicVariable "Cell_un_1";

							Cell_un_1 addWeapon "JLTS_E5";
							Cell_un_1 addHeadgear "Fem_helmet_black";
							Cell_un_1 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_1 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_1 addBackpack " ";
							Cell_un_1 addGoggles " ";
							Cell_un_1 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_1 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_1 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_1 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							mars_unti_cell = {
    								if ((count waypoints Cell_un_1) >= 80) then {
    
    								} else {
      								  v_unti_cell = group Cell_un_1 addWaypoint [Post_cwest, 100];
      								  v_unti_cell setWaypointStatements ["true", "call mars_unti_cell;"];
    								};
							};
							call mars_unti_cell;
							sleep 2;
							Cell_un_2 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_2 setSkill 1; 
							Cell_un_2 setRank 'PRIVATE'; 
							Cell_un_2 setFormDir 75; 
							Cell_un_2 setDir 75; 
							Cell_un_2 setPosWorld Post_cwest2;
							publicVariable "Cell_un_2";

							Cell_un_2 addWeapon "JLTS_E5";
							Cell_un_2 addHeadgear "Bat_oxymask_black";
							Cell_un_2 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_2 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_2 addBackpack " ";
							Cell_un_2 addGoggles "G_Balaclava_TI_G_blk_F";
							Cell_un_2 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_2 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_2 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_2 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_3 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_3 setSkill 1; 
							Cell_un_3 setRank 'PRIVATE'; 
							Cell_un_3 setFormDir 75; 
							Cell_un_3 setDir 75; 
							Cell_un_3 setPosWorld Post_cwest2;
							publicVariable "Cell_un_2";

							Cell_un_3 addWeapon "JLTS_E5";
							Cell_un_3 addHeadgear "Bat_oxymask_black";
							Cell_un_3 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_3 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_3 addBackpack " ";
							Cell_un_3 addGoggles "G_Balaclava_TI_G_blk_F";
							Cell_un_3 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_3 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_3 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_3 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_4 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_4 setSkill 1; 
							Cell_un_4 setRank 'PRIVATE'; 
							Cell_un_4 setFormDir 75; 
							Cell_un_4 setDir 75; 
							Cell_un_4 setPosWorld Post_cwest2;
							publicVariable "Cell_un_2";

							Cell_un_4 addWeapon "JLTS_E5";
							Cell_un_4 addHeadgear "Fem_helmet_black";
							Cell_un_4 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_4 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_4 addBackpack " ";
							Cell_un_4 addGoggles " ";
							Cell_un_4 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_4 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_4 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_4 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							Cell_un_Group setFormation 'DIAMOND'; 
							Cell_un_Group setCombatMode 'YELLOW'; 
							Cell_un_Group setBehaviour 'AWARE'; 
							Cell_un_Group setSpeedMode 'NORMAL';
					};
				} else {

				};
			};

			publicVariable "cvest_it";

			Status_cvest = true;
			publicVariable "Status_cvest";

			[[Merc_contract],{
				Cvest_time = [Merc_contract] spawn {
					uisleep 1800;
					deleteMarker "cell1";
					deleteMarker "cell2";
					deleteVehicle cvest_it;
					deleteGroup Cell_un_Group;
					deleteVehicle Cell_un_1;
					deleteVehicle Cell_un_2;
					deleteVehicle Cell_un_3;
					deleteVehicle Cell_un_4;
					deleteVehicle Cell_un_5;
					deleteVehicle Cell_un_6;
					Status_cvest = false;
					publicVariable "Status_cvest";
					[[Merc_contract],{
						removeAllActions Merc_contract;
						call Talk_Merc;
					}] remoteExec ["call"];
				};
			}] remoteExec ["spawn", 2];

			Merc_contract addAction [
			"<img size = '1.2' image='\a3\ui_f\data\igui\cfg\simpletasks\types\help_ca.paa'></img>"
			+"<t font='PuristaLight' size = '1'> Сдать контракт.</t>",
			{
				if ("hgun_esd_01_F" in (items player)) then {
					player removeitem "hgun_esd_01_F";
					player removeitem "JLTS_intel_trackingFob";
					player removeitem "JLTS_intel_holoProjector";
					player removeitem "ACE_DAGR";
					player additem "JLTS_credits_100";
					profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")+2)]; 
					saveProfileNamespace;
					titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Отлично, вот твои деньги.</t>","plain down",2,true,true];
					deleteMarker "cell1";
					deleteMarker "cell2";
					deleteVehicle cvest_it;
					deleteGroup Cell_un_Group;
					deleteVehicle Cell_un_1;
					deleteVehicle Cell_un_2;
					deleteVehicle Cell_un_3;
					deleteVehicle Cell_un_4;
					deleteVehicle Cell_un_5;
					deleteVehicle Cell_un_6;
					Status_cvest = false;
					publicVariable "Status_cvest";
					Chetchk_cvest = Chetchk_cvest + 1;
					publicVariable "Chetchk_cvest";
					if (Chetchk_cvest >= 3) then {
						[[Merc_contract],{
							uisleep 600;
							Chetchk_cvest = 0;
							publicVariable "Chetchk_cvest";
						}] remoteExec ["spawn", 2];
					};
					[[],{
						removeAllActions Merc_contract;
						call Talk_Merc;
						[[Merc_contract],{
							terminate Cvest_time;
						}] remoteExec ["call", 2];
					}] remoteExec ["call"];
				} else {
					titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Вот когда выполнишь, тогда и придёшь. И помни, деньги не главное.</t>","plain down",2,true,true];
				};

			},nil,1,true,false,"","",3];
		} else {

















			if (Type_cvest == 2) then {
				call Post_cwest_chek;
				titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - М-м-м есть кое-что. Нужно прийти на метку и ликвидировать цель, метка уже стоит на карте, на выполнение даю полчаса.</t>","plain down",2,true,true];
				deleteMarker "cell1";
				deleteMarker "cell2";
				createMarker ["cell1",Post_cwest];
				"cell1" setMarkerShape "ellipse";
				"cell1" setMarkerType "ellipse";
				"cell1" setMarkerBrush "fdiagonal";
				"cell1" setMarkerSize [150,150];
				"cell1" setMarkerColor "ColorOPFOR";
				createMarker ["cell2", Post_cwest];
				"cell2" setMarkerType "hd_dot";
				"cell2" setMarkerText "Примерная зона поиска (CELL)";


				[Merc_contract] spawn {
					resistance setFriend [civilian, 0];
					civilian setFriend [resistance, 0];
					blufor setFriend [civilian, 0];
					civilian setFriend [blufor, 0];
					Type_unit_cvest = [1,2,3] call BIS_fnc_selectRandom;
					Post_cwest2 = [[[Post_cwest, (random [50,100,150])]],[]] call BIS_fnc_randomPos;
					
					if (Type_unit_cvest == 1) then {
						Cell_un_Group = createGroup civilian; 
						Cell_un_1 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_1 setSkill 1; 
						Cell_un_1 setRank 'PRIVATE'; 
						Cell_un_1 setFormDir 0; 
						Cell_un_1 setDir 0; 
						Cell_un_1 setPosWorld Post_cwest2;
						publicVariable "Cell_un_1";

						Cell_un_1 addWeapon "JLTS_E5C";
						Cell_un_1 addHeadgear "Tur_Hastat_helmet_black";
						Cell_un_1 forceaddUniform "TurianSuit2_h_black_CombatUniform";
						Cell_un_1 addVest "Tur_BlueSunsBlack_armor";
						Cell_un_1 addBackpack "Tur_back_medium_black_v1";
						Cell_un_1 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_1 addMagazineGlobal "JLTS_E5C_mag";

						Cell_un_1 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_1 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_1 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_2 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_2 setSkill 1; 
						Cell_un_2 setRank 'PRIVATE'; 
						Cell_un_2 setFormDir 75; 
						Cell_un_2 setDir 75; 
						Cell_un_2 setPosWorld Post_cwest2;
						publicVariable "Cell_un_2";

						Cell_un_2 addWeapon "JLTS_E5C";
						Cell_un_2 addHeadgear "Tur_Hastat_helmet_black";
						Cell_un_2 forceaddUniform "TurianSuit2_h_black_CombatUniform";
						Cell_un_2 addVest "Tur_BlueSunsBlack_armor";
						Cell_un_2 addBackpack "Tur_back_medium_black_v1";
						Cell_un_2 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_2 addMagazineGlobal "JLTS_E5C_mag";

						Cell_un_2 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_2 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_2 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_3 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_3 setSkill 1; 
						Cell_un_3 setRank 'PRIVATE'; 
						Cell_un_3 setFormDir 285; 
						Cell_un_3 setDir 285; 
						Cell_un_3 setPosWorld Post_cwest2;
						publicVariable "Cell_un_3";

						Cell_un_3 addWeapon "JLTS_E5";
						Cell_un_3 addHeadgear "H_PASGT_basic_black_F";
						Cell_un_3 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_3 addVest "V_PlateCarrier2_blk";
						Cell_un_3 addBackpack " ";
						Cell_un_3 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_3 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_3 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_3 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_3 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_4 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_4 setSkill 1; 
						Cell_un_4 setRank 'PRIVATE'; 
						Cell_un_4 setFormDir 330; 
						Cell_un_4 setDir 330; 
						Cell_un_4 setPosWorld Post_cwest2;
						publicVariable "Cell_un_4";

						Cell_un_4 addWeapon "JLTS_E5";
						Cell_un_4 addHeadgear "H_PASGT_basic_black_F";
						Cell_un_4 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_4 addVest "V_PlateCarrier2_blk";
						Cell_un_4 addBackpack " ";
						Cell_un_4 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_4 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_4 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_4 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_4 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_5 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_5 setSkill 1; 
						Cell_un_5 setRank 'PRIVATE'; 
						Cell_un_5 setFormDir 75; 
						Cell_un_5 setDir 75; 
						Cell_un_5 setPosWorld Post_cwest2;
						publicVariable "Cell_un_5";

						Cell_un_5 addWeapon "JLTS_E5";
						Cell_un_5 addHeadgear "H_PASGT_basic_black_F";
						Cell_un_5 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_5 addVest "V_PlateCarrier2_blk";
						Cell_un_5 addBackpack " ";
						Cell_un_5 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_5 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_5 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_5 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_5 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						sleep 2;
						Cell_un_6 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
						Cell_un_6 setSkill 1; 
						Cell_un_6 setRank 'PRIVATE';
						Cell_un_6 setFormDir 285; 
						Cell_un_6 setDir 285; 
						Cell_un_6 setPosWorld Post_cwest2;
						publicVariable "Cell_un_6";

						Cell_un_6 addWeapon "JLTS_E5";
						Cell_un_6 addHeadgear "Bat_oxymask_black";
						Cell_un_6 forceaddUniform "U_O_R_Gorka_01_black_F";
						Cell_un_6 addVest "Hum_Smug_heavy_black_armor_v1";
						Cell_un_6 addBackpack " ";
						Cell_un_6 addGoggles "G_Balaclava_TI_G_blk_F";
						Cell_un_6 addMagazineGlobal "JLTS_E5_mag";

						Cell_un_6 setVariable ["ace_medical_allowDamage", false, false];
						Cell_un_6 addEventHandler ["HandleDamage", {
							(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.3));
							if ((lifeState (_this select 0)) == "INCAPACITATED") then {
								(_this select 0) switchMove " ";
								(_this select 0) setVariable ["ace_isUnconscious", false, false];
								(_this select 0) setUnconscious false;
							};
						}];
						Cell_un_6 addEventHandler ["fired", {
							(vehicle (_this select 0)) setvehicleammo 1;
							object_post_damage = (_this select 6);
							object_atack_post = (_this select 0);
							[] spawn {
								waitUntil { alive object_post_damage};
								CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
								{
									[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
									[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
								} forEach CELL_Tech_spawn_object;
							};
						}];
						Cell_un_Group setFormation 'DIAMOND'; 
						Cell_un_Group setCombatMode 'YELLOW'; 
						Cell_un_Group setBehaviour 'AWARE'; 
						Cell_un_Group setSpeedMode 'NORMAL';
					} else {
						if (Type_unit_cvest == 2) then {
							Cell_un_Group = createGroup east; 
							Cell_un_1 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_1 setSkill 1; 
							Cell_un_1 setRank 'PRIVATE'; 
							Cell_un_1 setFormDir 0; 
							Cell_un_1 setDir 0; 
							Cell_un_1 setPosWorld Post_cwest2;
							publicVariable "Cell_un_1";

							Cell_un_1 addWeapon "JLTS_E5";
							Cell_un_1 addHeadgear "Fem_helmet_black";
							Cell_un_1 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_1 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_1 addBackpack " ";
							Cell_un_1 addGoggles " ";
							Cell_un_1 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_1 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_1 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_1 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_2 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_2 setSkill 1; 
							Cell_un_2 setRank 'PRIVATE'; 
							Cell_un_2 setFormDir 75; 
							Cell_un_2 setDir 75; 
							Cell_un_2 setPosWorld Post_cwest2;
							publicVariable "Cell_un_2";

							Cell_un_2 addWeapon "JLTS_E5";
							Cell_un_2 addHeadgear "Bat_oxymask_black";
							Cell_un_2 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_2 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_2 addBackpack " ";
							Cell_un_2 addGoggles "G_Balaclava_TI_G_blk_F";
							Cell_un_2 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_2 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_2 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_2 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_3 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_3 setSkill 1; 
							Cell_un_3 setRank 'PRIVATE'; 
							Cell_un_3 setFormDir 75; 
							Cell_un_3 setDir 75; 
							Cell_un_3 setPosWorld Post_cwest2;
							publicVariable "Cell_un_2";

							Cell_un_3 addWeapon "JLTS_E5";
							Cell_un_3 addHeadgear "Bat_oxymask_black";
							Cell_un_3 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_3 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_3 addBackpack " ";
							Cell_un_3 addGoggles "G_Balaclava_TI_G_blk_F";
							Cell_un_3 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_3 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_3 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_3 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_4 = Cell_un_Group createUnit ['C_man_p_fugitive_F', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_4 setSkill 1; 
							Cell_un_4 setRank 'PRIVATE'; 
							Cell_un_4 setFormDir 75; 
							Cell_un_4 setDir 75; 
							Cell_un_4 setPosWorld Post_cwest2;
							publicVariable "Cell_un_2";

							Cell_un_4 addWeapon "JLTS_E5";
							Cell_un_4 addHeadgear "Fem_helmet_black";
							Cell_un_4 forceaddUniform "Hum_SmugglerSuit_black3_F_CombatUniform";
							Cell_un_4 addVest "Hum_Smug_medium_black_armor_v1";
							Cell_un_4 addBackpack " ";
							Cell_un_4 addGoggles " ";
							Cell_un_4 addMagazineGlobal "JLTS_E5_mag";

							Cell_un_4 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_4 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.2));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_4 addEventHandler ["fired", {
								(vehicle (_this select 0)) setvehicleammo 1;
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							Cell_un_Group setFormation 'DIAMOND'; 
							Cell_un_Group setCombatMode 'YELLOW'; 
							Cell_un_Group setBehaviour 'AWARE'; 
							Cell_un_Group setSpeedMode 'NORMAL';
						} else {
							Cell_un_Group = createGroup east; 
							Cell_un_1 = Cell_un_Group createUnit ['JLTS_Droid_B1_Commander', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_1 setSkill 1; 
							Cell_un_1 setRank 'PRIVATE'; 
							Cell_un_1 setFormDir 0; 
							Cell_un_1 setDir 0; 
							Cell_un_1 setPosWorld Post_cwest;
							publicVariable "Cell_un_1";
							Cell_un_1 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_1 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_1 addEventHandler ["fired", {
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_2 = Cell_un_Group createUnit ['JLTS_Droid_B1_E5', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_2 setSkill 1; 
							Cell_un_2 setRank 'PRIVATE'; 
							Cell_un_2 setFormDir 75; 
							Cell_un_2 setDir 75; 
							Cell_un_2 setPosWorld Post_cwest;
							publicVariable "Cell_un_2";
							Cell_un_2 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_2 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_2 addEventHandler ["fired", {
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_3 = Cell_un_Group createUnit ['JLTS_Droid_B1_E5', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_3 setSkill 1; 
							Cell_un_3 setRank 'PRIVATE'; 
							Cell_un_3 setFormDir 285; 
							Cell_un_3 setDir 285; 
							Cell_un_3 setPosWorld Post_cwest;
							publicVariable "Cell_un_3";
							Cell_un_3 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_3 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_3 addEventHandler ["fired", {
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_4 = Cell_un_Group createUnit ['JLTS_Droid_B1_E5', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_4 setSkill 1; 
							Cell_un_4 setRank 'PRIVATE'; 
							Cell_un_4 setFormDir 330; 
							Cell_un_4 setDir 330; 
							Cell_un_4 setPosWorld Post_cwest;
							publicVariable "Cell_un_4";
							Cell_un_4 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_4 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_4 addEventHandler ["fired", {
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_5 = Cell_un_Group createUnit ['JLTS_Droid_B1_E5', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_5 setSkill 1; 
							Cell_un_5 setRank 'PRIVATE'; 
							Cell_un_5 setFormDir 75; 
							Cell_un_5 setDir 75; 
							Cell_un_5 setPosWorld Post_cwest;
							publicVariable "Cell_un_5";
							Cell_un_5 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_5 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_5 addEventHandler ["fired", {
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							sleep 2;
							Cell_un_6 = Cell_un_Group createUnit ['JLTS_Droid_B1_Sniper', Post_cwest2, [], 0, 'CAN_COLLIDE']; 
							Cell_un_6 setSkill 1; 
							Cell_un_6 setRank 'PRIVATE';
							Cell_un_6 setFormDir 285; 
							Cell_un_6 setDir 285; 
							Cell_un_6 setPosWorld Post_cwest;
							publicVariable "Cell_un_6";
							Cell_un_6 setVariable ["ace_medical_allowDamage", false, false];
							Cell_un_6 addEventHandler ["HandleDamage", {
								(_this select 0) setDamage ((damage (_this select 0)) + (((_this select 2)/100)*0.5));
								if ((lifeState (_this select 0)) == "INCAPACITATED") then {
									(_this select 0) switchMove " ";
									(_this select 0) setVariable ["ace_isUnconscious", false, false];
									(_this select 0) setUnconscious false;
								};
							}];
							Cell_un_6 addEventHandler ["fired", {
								object_post_damage = (_this select 6);
								object_atack_post = (_this select 0);
								[] spawn {
									waitUntil { alive object_post_damage};
									CELL_Tech_spawn_object = nearestObjects [(position object_post_damage), ["Man"], 0.5, true];
									{
										[_x, 0.5, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
										[_x, 0.5] call ace_medical_fnc_adjustPainLevel;
									} forEach CELL_Tech_spawn_object;
								};
							}];
							Cell_un_Group setFormation 'DIAMOND'; 
							Cell_un_Group setCombatMode 'YELLOW'; 
							Cell_un_Group setBehaviour 'AWARE'; 
							Cell_un_Group setSpeedMode 'NORMAL';
						};
					};
				};

				Status_cvest = true;
				publicVariable "Status_cvest";

				[[Merc_contract],{
				Cvest_time = [Merc_contract] spawn {
					uisleep 1800;
					deleteMarker "cell1";
					deleteMarker "cell2";
					deleteGroup Cell_un_Group;
					deleteVehicle Cell_un_1;
					deleteVehicle Cell_un_2;
					deleteVehicle Cell_un_3;
					deleteVehicle Cell_un_4;
					deleteVehicle Cell_un_5;
					deleteVehicle Cell_un_6;
					Status_cvest = false;
					publicVariable "Status_cvest";
					[[Merc_contract],{
						removeAllActions Merc_contract;
						call Talk_Merc;
					}] remoteExec ["call"];
				};
				}] remoteExec ["spawn", 2];









				Merc_contract addAction [
				"<img size = '1.2' image='\a3\ui_f\data\igui\cfg\simpletasks\types\help_ca.paa'></img>"
				+"<t font='PuristaLight' size = '1'> Сдать контракт.</t>",
				{
					if ((alive Cell_un_1) == false) then {
						profileNamespace setVariable ["CELL_Reputation",((profileNamespace getVariable "CELL_Reputation")+3)]; 
						saveProfileNamespace;
						deleteMarker "cell1";
						deleteMarker "cell2";
						deleteGroup Cell_un_Group;
						deleteVehicle Cell_un_1;
						deleteVehicle Cell_un_2;
						deleteVehicle Cell_un_3;
						deleteVehicle Cell_un_4;
						deleteVehicle Cell_un_5;
						deleteVehicle Cell_un_6;
						Status_cvest = false;
						publicVariable "Status_cvest";
						Chetchk_cvest = Chetchk_cvest + 1;
						publicVariable "Chetchk_cvest";
						if (Chetchk_cvest >= 3) then {
							[[Merc_contract],{
								uisleep 600;
								Chetchk_cvest = 0;
								publicVariable "Chetchk_cvest";
							}] remoteExec ["spawn", 2];
						};
						player additem (["JLTS_credits_100", "JLTS_credits_100", "JLTS_credits_100", "JLTS_credits_100", "JLTS_credits_100", "JLTS_credits_500"] call BIS_fnc_selectRandom);
						titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Отлично, вот твои деньги.</t>","plain down",2,true,true];
					[[],{
						removeAllActions Merc_contract;
						call Talk_Merc;
						[[Merc_contract],{
							terminate Cvest_time;
						}] remoteExec ["call", 2];
					}] remoteExec ["call"];
					} else {
						titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Вот когда выполнишь, тогда и придёшь. И помни, деньги не главное.</t>","plain down",2,true,true];
					};
				},nil,1,true,false,"","",3];
			};
		};
	} else {
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Контракт уже взяли, приходи позже.</t>","plain down",2,true,true];
	};
	} else {
		titletext ["<t color='#FFA812' size = '1.3'>Торговец CELL</t>"+"<t size = '1.3'>: - Контракт... хм-м-м. Приходи позже, минут так через 10. Там не знаю, займи себя чем-нибудь, музыку послушай, в саббак поиграй, в общем проваливай.</t>","plain down",2,true,true];
	};

},nil,1,true,false,"","",3];
};
call Talk_Merc;
*/