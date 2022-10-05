if (name player find "ARF" !=-1 or name player find "[RC" !=-1) then {player enableAimPrecision false};
while {true} do 
{
	if (name player find "ARF" !=-1 or name player find "[RC" !=-1) then 
	{
		player setCustomAimCoef 0;
	};
};