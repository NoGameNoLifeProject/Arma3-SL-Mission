_unit = player;
sleep 0.1;
player setVariable ['Cloak_on', false];
[[_unit, false], "yy_fnc_hideObj", nil, true] spawn BIS_fnc_MP;
player setCaptive false;
player AllowDamage true;