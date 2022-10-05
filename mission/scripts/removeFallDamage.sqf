waitUntil {local player};
_name = name player;

/*if ((_name find "327]" != -1) || (_name find "[327" != -1)) then {
	player addEventHandler ["HandleDamage", { 
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
		if(_projectile isEqualTo "" and _unit isEqualTo _source) then  
		{ 
			_damage = 0; 
		}; 
		_damage 
	}];
};*/