// Makes a group patrol around a position specified.
// alpha_1_1
// marker_0

private _markerPosition  = markerPos "marker_0";
private _demoGroup = group squadLeader;
[ _demoGroup, _markerPosition, 20] call w;