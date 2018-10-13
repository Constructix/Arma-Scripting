// one the add action has been added.
// need go through and 

private ["_actions"];

_actions = actionIDs chopper;
chopper removeAction 0;
[] execVM "NewUnitsRequired.sqf";

