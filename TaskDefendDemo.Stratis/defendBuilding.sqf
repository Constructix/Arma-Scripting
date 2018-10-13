private _message = "Called defendBuilding.sqf successfully";
private _markerPosition = getMarkerPos "marker_0";

private _aIGroup  = group e;
private ["_sniperA"];
private ["_truckGroup"];
private ["_wp"];







_sniperA = group tom;
_truckGroup = group truck;



_wp = _sniperA addWaypoint [_markerPosition, 0];
_wp setWaypointType "SAD";
_wp setWaypointCompletionRadius 20;
_sniperA setBehaviour "AWARE";


_wp = _truckGroup addWaypoint [_markerPosition, 0];
_wp setWaypointType "MOVE";
_wp setWaypointCompletionRadius 20;
_truckGroup setBehaviour "AWARE";



[_aIGroup, _markerPosition] call BIS_fnc_taskDefend;



