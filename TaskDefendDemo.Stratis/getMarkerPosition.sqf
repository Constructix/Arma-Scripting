private _markerPosition = getMarkerPos "marker_0";

private _tGroup = group mario;
private _message = "Assigned OK";
if (isNull _tGroup) then
{
	_message = "t_group is Null";
};
hint str _message;
private _wp = _tGroup addWaypoint [_markerPosition, 0];
_wp setWaypointType "SAD";
_wp setWaypointCompletionRadius 20;
_tGroup setBehaviour "AWARE";
