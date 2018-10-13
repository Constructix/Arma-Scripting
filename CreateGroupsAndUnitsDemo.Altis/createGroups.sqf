
params ["_location"];
private ["_currentGroup"];
private ["_currentUnit"];
private ["_soldiers"];
private ["_units"];
private ["_wp"];
private ["_selectedWayPoint"];

_soldiers = ["B_Soldier_GL_F","B_soldier_AR_F","B_Soldier_SL_F","B_Soldier_TL_F","B_soldier_LAT_F","B_medic_F"];

// create west group
_currentGroup = createGroup[west, true]; // _currentGroup = createGroup[east, true];

{
	_currentUnit = _currentGroup createUnit[_x, markerPos "marker_0", [],0, "NONE"];
	[_currentUnit] join _currentGroup;
	
} forEach _soldiers;

_wp = _currentGroup addWaypoint[markerPos "marker_0", 150, 1 ];
[_currentGroup,1] setWaypointType "MOVE";
[_currentGroup,1] setWaypointFormation "COLUMN";

_wp = _currentGroup addWaypoint[markerPos "marker_0", 200, 2 ];
[_currentGroup,2] setWaypointType "MOVE";

_wp = _currentGroup addWaypoint[markerPos "marker_0", 300, 3 ];
[_currentGroup,3] setWaypointType "MOVE";

_wp = _currentGroup addWaypoint[markerPos "marker_0", 50, 4 ];
[_currentGroup,4] setWaypointType "MOVE";

_wp = _currentGroup addWaypoint[markerPos "marker_0", 150, 5 ];
[_currentGroup,5] setWaypointType "CYCLE";


/*
// create unit
_currentUnit = _currentGroup createUnit["B_Soldier_F", markerPos "marker_0", [],0, "NONE"];
// unit join group
[_currentUnit] join _currentGroup;
*/


