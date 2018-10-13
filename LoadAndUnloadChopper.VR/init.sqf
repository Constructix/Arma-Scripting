private ["_xPos"];
private ["_yPos"];
private ["_zPos"];
private ["_action"];
_action = chopper addAction ["Reload New Units", "NewUnitsRequired.sqf",[], 10,true,false,"","",-1,false,"",""];
[] call Rjj_fnc_callForNewUnits;