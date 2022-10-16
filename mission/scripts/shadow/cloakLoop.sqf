CloakTypes = ["Shadow", "JM"];
CloakMax = [1800, 600];
CloakRateOn = [-1, -1];
CloakRateOff = [5, 3];
CloakBreakCost = [10, 20];
CloakThreshold = [900, 300];
cloak_uniform = ["JMSSL_CloneTrooper_shadow_F_CombatUniform","SLTEAM_gs_uni","SLTEAM_gscmd_uni","SLTEAM_Valeska_uni","SLTEAM_cadet_uni","SLTEAM_hunter_uni","SLTEAM_ins_uni","SLTEAM_saboteur_uni"];
_uid = getPlayerUID player;

disableSerialization;
while{true} do {
    _cloakEnergyCtrl = (findDisplay 46) displayCtrl 9002;
	if(isNull(_cloakEnergyCtrl)) then {
		_cloakEnergyCtrl = (findDisplay 46) ctrlCreate ["RscText", 9002];
		_cloakEnergyCtrl ctrlSetPosition [SafeZoneXAbs + SafeZoneW * 0.85, SafeZoneY + (SafeZoneH - 0.05) / 2, 0.3, 0.03];
		_cloakEnergyCtrl ctrlSetFontHeight 0.04;
		_cloakEnergyCtrl ctrlCommit 0;
	};
    if (uniform player in cloak_uniform) then { // 
		_cloakEnergyCtrl ctrlShow true;
        
        _type = CloakTypes find (player getVariable["Cloak_Type", "Shadow"]);
        _CloakMax = CloakMax select _type;
        _CloakRateOn = CloakRateOn select _type;
        _CloakRateOff = CloakRateOff select _type;

        _curEnergy = player getVariable["CloakEnergy", _CloakMax];
        _cloakOn = player getVariable ["Cloak_on", false];

        if(_cloakOn) then {
            if(_curEnergy <= 0) then {
                execVM "scripts\shadow\deactivateInv.sqf";
            };
            _curEnergy = _curEnergy + _CloakRateOn;
        } else {
            _curEnergy = _curEnergy + _CloakRateOff;
        };
        _cb = player getVariable["CloakBroke", 0];
        if(_cb > 0) then {
            _curEnergy = _curEnergy - _CloakBreakCost * sqrt(_cb);
            player setVariable["CloakBroke", 0];
        };
        _curEnergy = 0 max (_CloakMax min _curEnergy);
        player setVariable ["CloakEnergy", _curEnergy];
        
		_cloakEnergyCtrl ctrlSetText format ["Запас энергии: %1 / %2", _curEnergy, _CloakMax];
		
		_cloakEnergyCtrl ctrlCommit 0;
        sleep 1;
    } else {
        if ("SLSW_Jedi_Shadow_Crystal" in (items player)) then {
            _cloakEnergyCtrl ctrlShow true;

            _type = CloakTypes find (player getVariable["Cloak_Type", "JM"]);
            _CloakMax = CloakMax select _type;
            _CloakRateOn = CloakRateOn select _type;
            _CloakRateOff = CloakRateOff select _type;

            _curEnergy = player getVariable["CloakEnergy", _CloakMax];
            _cloakOn = player getVariable ["Cloak_on", false];

            if(_cloakOn) then {
                if(_curEnergy <= 0) then {
                    execVM "scripts\shadow\deactivateInv.sqf";
                };
                _curEnergy = _curEnergy + _CloakRateOn;
            } else {
                _curEnergy = _curEnergy + _CloakRateOff;
            };
            _cb = player getVariable["CloakBroke", 0];
            if(_cb > 0) then {
                _curEnergy = _curEnergy - _CloakBreakCost * sqrt(_cb);
                player setVariable["CloakBroke", 0];
            };
            _curEnergy = 0 max (_CloakMax min _curEnergy);
            player setVariable ["CloakEnergy", _curEnergy];

		    _cloakEnergyCtrl ctrlSetText format ["Запас энергии: %1 / %2", _curEnergy, _CloakMax];
    
		    _cloakEnergyCtrl ctrlCommit 0;
            sleep 1;
        } else {
		    _cloakEnergyCtrl ctrlShow false;
            sleep 10;
        }
    };
};
