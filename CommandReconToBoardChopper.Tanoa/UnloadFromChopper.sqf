private ["_chopperLocation","_wp","_chopperLandWayPoint", "_chopperGroup"];

_chopperLocation = getPos chopper;
_currentXPosition = _chopperLocation select 0;
_currentYPosition = _chopperLocation select 1;
hint format["%1 - %2",  _currentXPosition, _currentYPosition];
_chopperGroup = group chopper;
// create waypoint
// unload from chopper
_chopperLandWayPoint = _chopperGroup addWaypoint[_chopperLocation, 10];
_wp = recon_Group addWaypoint[_chopperLocation, 10];

_chopperLandWayPoint setWaypointType "UNLOAD"; 
_wp setWaypointType "GETOUT";


{ unassignVehicle _x } forEach crew chopper;




