sleep 10;
switch (playerSide) do 
{
	case west: 
	{
		_dayTime = [daytime] call BIS_fnc_timeToString;
		[
			[
				["Планета: Толиман (Альфа Центавра), База Республики","size = '0.7'"],
				["","<br/>"],
				["Местное время: ","size = '0.7'"],
				[str _dayTime,"size = '0.7'"],
				["","<br/>"]
			],
			safeZoneX / 45.5, safeZoneH / 2, true, "<t font='PuristaBold'>%1</t>", [], {false}, true
		] spawn BIS_fnc_typeText2;
	};
	case resistance: 
	{
		_dayTime = [daytime] call BIS_fnc_timeToString;
		[
			[
				["Планета: Толиман (Альфа Центавра), Канализация","size = '0.7'"],
				["","<br/>"],
				["Местное время: ","size = '0.7'"],
				[str _dayTime,"size = '0.7'"],
				["","<br/>"]
			],
			safeZoneX / 45.5, safeZoneH / 2, true, "<t font='PuristaBold'>%1</t>", [], {false}, true
		] spawn BIS_fnc_typeText2;
	};
	case east: {};
	case civilian: {};
};

sleep 20;
_role1 = "Добро пожаловать на Star Wars RP";
_role1names = [profileName];
_role2 = "Игровой проект Star Line";
_role2names = ["Created by AnastasiyaHunter"];
_role3 = "Разработчики...";
_role3names = ["Что-то да исправили"];
_role4 = "Посетите нашу группу VK";
_role4names = ["vk.com/starlinearma"];
_role5 = "Присоединяйтесь к Discord";
_role5names = ["discord.gg/zsVPXyxJyY"];
_role6 = "Ознакомьтесь с информацией на форуме (Nope)";
_role6names = ["starlinesw.ru/forum/"];
_role7 = "Удачной игры!";
_role7names = [profileName];
_onScreenTime=3;

{
	sleep 2;
	_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='0.55' color='#ffd700' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#ffffff' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.9);
	[
		_finalText,
		[safezoneX + safezoneW - 0.8,0.50],	//Стандарт: 0.5,0.35
		[safezoneY + safezoneH - 0.8,0.7],	//Стандарт: 0.8,0.7
		_onScreenTime,
		0.5
	] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach 
[
	[_role1, _role1names],
	[_role2, _role2names],
	[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names],
	[_role6, _role6names],
	[_role7, _role7names]
];