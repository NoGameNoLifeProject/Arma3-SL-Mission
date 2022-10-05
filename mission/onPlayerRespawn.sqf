params ["", "_oldUnit"];
removeAllActions _oldUnit;
[] execVM "scripts\addAction.sqf";
2 cutText ["", "BLACK IN", 30];