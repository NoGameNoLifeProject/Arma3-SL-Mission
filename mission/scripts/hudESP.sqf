waitUntil {local player};
_name = name player;

if (_name find "327]" != -1 || _name find "[327" != -1 || _name find "ARF" != -1 || _name find "ARC" != -1 || _name find "RC" != -1 || _name find "Director" != -1) then {

	player setVariable ["TogglePlayerDisplay", false];
	function_keyDown = {
		params ["_ctrl", "_dikCode", "_shift", "_ctrlKey", "_alt"];
		if (_shift &&_dikCode == 24) then {
			_enabled = player getVariable ["TogglePlayerDisplay", false];
			player setVariable ["TogglePlayerDisplay", !_enabled];
		};
	};

	[] spawn {
		waituntil {!isnull (finddisplay 46)};
		(findDisplay 46) displayAddEventHandler ["keyDown", "_this call function_keyDown"];
	};

	addMissionEventHandler ["Draw3D", {
		if (player getVariable ["TogglePlayerDisplay", false]) then {
			_path = getMissionPath "data\hudESP.paa";      
			{     
				_cansee = [objNull, "VIEW"] checkVisibility [eyePos player, eyePos _x];    
				if (_cansee > 0) then {   
					_dist = player distance getPos _x;  
					if (_dist > 0.1) then {  
						_stance = stance _x; 
						_ppos = (_x modelToWorldVisual [0,0,0]) vectorAdd [0,0,1]; 
						_k = 0.5;  
						_w = 3 * _k;  
						_h = 5 * _k;  
						if (_stance == "CROUCH") then {  
							_h = 3 * _k;  
						};
						if (_stance == "PRONE") then {  
							_h = 1 * _k; 
						   _ppos = _ppos vectorAdd [0,0,-0.5]; 
						};  
						drawIcon3D [       
							_path,        
							[0,0.64,0.27,1],
							_ppos,       
							_w,  
							_h,      
							0       
						];    
					};   
				};      
			}foreach units(player);

			if (missionNamespace getVariable ["ScanOn", false]) then {
				_list = missionNamespace getVariable ["DroneScanedUnits", []];
				{
					if (_x isKindOf "Man") then {
						_cansee = [objNull, "VIEW"] checkVisibility [eyePos player, eyePos _x];    
						if (_cansee > 0) then {
							_side = side _x;
							if (_side != side player) then {
								_color = [1,1,1,1];
								if (_side == east) then {
									_color = [1,0,0,1];
								};
								if (side _x == resistance) then {
									_color = [1,0.77,0,1];
								};
								_dist = player distance getPos _x;  
								if (_dist > 0.1) then {  
									_stance = stance _x; 
									_ppos = (_x modelToWorldVisual [0,0,0]) vectorAdd [0,0,1]; 
									_k = 0.5;  
									_w = 3 * _k;  
									_h = 5 * _k;  
									if (_stance == "CROUCH") then {  
										_h = 3 * _k;  
									};if (_stance == "PRONE") then {  
										_h = 1 * _k; 
									   _ppos = _ppos vectorAdd [0,0,-0.5]; 
									};  
									drawIcon3D [       
										_path,        
										_color,
										_ppos,       
										_w,  
										_h,      
										0       
									];    
								};
							};
						};
					} else {
						_cansee = [objNull, "VIEW"] checkVisibility [eyePos player, AtlToAsl(_x modeltoworld [0,0,0])];    
						if (_cansee > 0) then {
							_side = side _x;
							if (_side != side player) then {
								_color = [1,1,1,1];
								if (_side == east) then {
									_color = [1,0,0,1];
								};
								if (side _x == resistance) then {
									_color = [1,0.77,0,1];
								};
								_dist = player distance getPos _x;  
								if (_dist > 0.1) then {  
									_stance = stance _x; 
									_ppos = (_x modelToWorldVisual [0,0,0]) vectorAdd [0,0,1]; 
									_k = 0.5;  
									_w = 3 * _k;  
									_h = 3 * _k;  
									drawIcon3D [       
										_path,        
										_color,
										_ppos,       
										_w,  
										_h,      
										0       
									];    
								};
							};
						};
					};
				} foreach _list;
			};
		};	
	}];
};
