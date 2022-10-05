waitUntil {local player};
_startregP = false;
_startregS = false;
_cooldownP = 0;
_cooldownS = 0;
_maxRoundsP = 0;
_maxRoundsS = 0;
_oldcountP = 0;
_oldcountS = 0;
_primaryweapon = "";
_secondaryweapon = "";
_retimerP = 3;
_recamountP = 15;
_retimerS = 3;
_recamountS = 10;

_name = name player;

if (_name find "327]" != -1 || _name find "[327" != -1) then {
	while {true} do {
		sleep 1;
	
		if (_primaryweapon != primaryWeapon player) then {
			_primaryweapon = primaryWeapon player;
			_max = 0;
			{
				if (getNumber (configFile >> "CfgMagazines" >> _x >> "count") max 1 > _max) then{
					_max = getNumber (configFile >> "CfgMagazines" >> _x >> "count") max 1;
				};
			}forEach (primaryWeaponMagazine player);
			_maxRoundsP = _max;
		};
	
		_acountP = player ammo primaryWeapon player;
		if (_maxRoundsP > _acountP && _oldcountP > _acountP) then {
			_cooldownP = _retimerP;
			_startregP = false;
		};
	
		if (_cooldownP != 0) then {
			_cooldownP = _cooldownP - 1;
			_oldcountP = _acountP;
		} else {_startregP = true;};
	
		if (_startregP) then {
			player setAmmo [primaryWeapon player, _acountP + _recamountP];
			_oldcountP = player ammo primaryWeapon player;
		};
	
		if (_secondaryweapon != handgunWeapon player) then {
			_secondaryweapon = handgunWeapon player;
			_magazineConfig = configFile >> "CfgMagazines" >> handgunMagazine player select 0;
			_maxRoundsS = getNumber (_magazineConfig >> "count") max 1;
		};
	
		_acountS = player ammo handgunWeapon player;
		if (_maxRoundsS > _acountS && _oldcountS > _acountS) then {
			_cooldownS = _retimerS;
			_startregS = false;
		};
	
		if (_cooldownS != 0) then {
			_cooldownS = _cooldownS - 1;
			_oldcountS = _acountS;
		} else {_startregS = true};
	
		if (_startregS) then {
			player setAmmo [handgunWeapon player, _acountS + _recamountS];
			_oldcountS = player ammo handgunWeapon player;
		};
	};
};