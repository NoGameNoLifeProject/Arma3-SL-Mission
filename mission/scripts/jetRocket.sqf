if (cursorObject distance player <= 300 && cursorObject isKindOf "landVehicle" && isEngineOn cursorObject) then 
{
	if ((getPos player) select 2 < 5) then
	{
		hint "Вы слишком низко";
		sleep 1.5;
		hint "";
	}
	else
	{
		_cd = time + 1800;
		player setVariable ["jetCd", _cd];
		_rkPos = player modelToWorld [0, 0, +3.5];
		_rk = createVehicle ["M_Jian_AT", _rkPos, [], 0, "NONE"]; 
		_rk setDir getDir player; 
		_tgt = cursorObject;
		[_rk,_tgt] spawn  
		{
			params ["_rk", "_tgt"]; 
			sleep 0.1; 
			_rk setMissileTarget _tgt; 
		};
	};
} else 
{
	hint "Цель не найдена";
	sleep 1.5;
	hint "";
};