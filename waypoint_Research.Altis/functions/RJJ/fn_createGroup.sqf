params [ "_location","_side","_config"];

private ["_group"];
_group =  [_location, _side, _config] call BIS_fnc_spawnGroup;
_group;