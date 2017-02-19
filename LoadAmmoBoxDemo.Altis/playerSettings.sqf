private ["_groupName"];

player enableFatigue false;
player enableAimPrecision false;
player allowSprint true;
_groupName = op_forUnit;

_ambFlyby = [getposATL player, getPos _groupName, 50, "FULL", "B_Heli_Light_01_Armed_F", WEST] call BIS_fnc_ambientFlyBy;
