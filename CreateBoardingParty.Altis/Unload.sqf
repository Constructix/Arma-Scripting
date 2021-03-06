private ["_wp"];
private ["_currentChopperPos"];
private ["_currentGroup"];
private ["_t"];
private ["_chopperUnits"];
private ["_gen","_caller", "_id"];


_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;
// remove the action once it is activated
_gen removeAction _id;
chopper addAction["Create Loading Units", "LoadUnits.sqf",[],0, false, true];

_currentChopperPos = getPos Chopper;
_chopperUnits = fullCrew[chopper,"cargo"];
_currentGroup = createGroup[west, true];
_chopperUnits join _currentGroup;
{ 	
	unassignVehicle _x;
} forEach crew chopper;
  
_wp = _currentGroup  addWaypoint [_currentChopperPos, 10,1];
[_currentGroup,1] setWaypointFormation "LINE";
[_currentGroup, 1] setWaypointType "MOVE";
[_currentGroup, 1] setWaypointCombatMode "RED";
[_currentGroup, 1] setWaypointVisible true;

_wp setWaypointStatements ["true", "hint 'waypoint reached';"];

_wp = _currentGroup  addWaypoint [_currentChopperPos, 50,2];
[_currentGroup, 2] setWaypointType "MOVE";
[_currentGroup, 2] setWaypointVisible true;

[_currentGroup, _currentChopperPos] call BIS_fnc_taskDefend;
