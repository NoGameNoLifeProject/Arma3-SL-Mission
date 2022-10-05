while {true} do 
{
	{
		if (count units _x == 0) then 
		{
			[_x] remoteExec ["deleteGroup", 0];
		};
	} forEach allGroups;
	sleep 60;
};