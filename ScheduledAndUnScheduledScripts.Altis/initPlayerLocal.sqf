// initPlayerLocal.sqf

params["_unit", "_isJIP"];

[_unit] call pAx_fnc_setupPlayer;
_handle =  [_unit] spawn pAx_fnc_testScripts; // unscheduled
hint "Script Not Done";

