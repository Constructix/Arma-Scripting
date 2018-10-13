private ["_orca"];
private ["_chopperPosition"];

private ["_x", "_y"];
[] ExecVM "CreateMainAOMarker.sqf";

_chopperPosition = position player;
_x = [-500,500] call BIS_fnc_randomInt;
_y = [-500,500] call BIS_fnc_randomInt;




_orca = "" createVehicle 




