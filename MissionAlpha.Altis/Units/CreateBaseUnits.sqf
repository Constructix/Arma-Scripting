params ["_group"];
private ["_unit"];
_unit = _group createUnit["O_Soldier_F", _x, [], 0,"CAN_COLLIDE"];
_unit setUnitPos "UP";
_unit disableAI "Move";
_unit addEventHandler ["killed", { "notifyOtherUnitsToBecomeAware.sqf"} ];