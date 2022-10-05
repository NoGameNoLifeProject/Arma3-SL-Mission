params ["_unit"];
_namePlayer = name _unit;
if ((_namePlayer find "CPL" !=-1) or (_namePlayer find "CPS" !=-1)) then {[_unit, "CORPORAL"] remoteExec ["setRank", 0]};

if ((_namePlayer find "SGT" !=-1) or (_namePlayer find "SSG" !=-1) or (_namePlayer find "SGM" !=-1) or (_namePlayer find "MSG" !=-1) or (_namePlayer find "FPO" !=-1) or (_namePlayer find "FMS" !=-1) or (_namePlayer find "MCPO" !=-1)) then {[_unit, "SERGEANT"] remoteExec ["setRank", 0]};

if ((_namePlayer find "WO" !=-1) or (_namePlayer find "2LT" !=-1) or (_namePlayer find "LT" !=-1) or (_namePlayer find "Fl.LT" !=-1) or (_namePlayer find "LCM" !=-1)) then {[_unit, "LIEUTENANT"] remoteExec ["setRank", 0]};

if ((_namePlayer find "CPT" !=-1) or (_namePlayer find "CMR" !=-1)) then {[_unit, "CAPTAIN"] remoteExec ["setRank", 0]};

if ((_namePlayer find "MAJ" !=-1) or (_namePlayer find "COL" !=-1) or (_namePlayer find "CC" !=-1) or (_namePlayer find "Fl.COM" !=-1) or (_namePlayer find "Fl.CPT" !=-1)) then {[_unit, "MAJOR"] remoteExec ["setRank", 0]};

if ((_namePlayer find "MC" !=-1) or (_namePlayer find "CMD" !=-1) or (_namePlayer find "VAM" !=-1) or (_namePlayer find "AM" !=-1) or (_namePlayer find "GEN" !=-1) or (_namePlayer find "SGEN" !=-1) or (_namePlayer find "HGEN" !=-1) or (_namePlayer find "Dir" !=-1)) then {[_unit, "COLONEL"] remoteExec ["setRank", 0]};