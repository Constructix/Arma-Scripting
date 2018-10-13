//east_group1
//chopper2
private ["_units"];

_units = units east_group1;
//[myCar, player, "cargo"] [call]] BIS_fnc_moveIn;

{
	// Current result is saved in variable _x
	[chopper2, _x, "cargo"] call BIS_fnc_moveIn;
} forEach _units;


[] spawn {

	_units = units east_group1;
	sleep(5);
	// now parachute from chopper
	{
		// Current result is saved in variable _x
		_x addBackPack "B_parachute"; 
		moveout _x; 
		_x action["openParachute", _x];
		sleep(1);
	} forEach _units;

};

private ["_buildingPos","_wp", "_chopperGroup","_waypoints"];
_buildingPos = [9397.09,15917.9,0];


// _wp setWaypointBehaviour "CARELESS";
// _wp setWaypointSpeed "FULL";
// go and defend house int the township.
[east_group1, _buildingPos ] call BIS_fnc_taskDefend;
_chopperGroup = createGroup east;
[chopper2] join _chopperGroup;


_wp  = _chopperGroup addWaypoint [[4570.17,15464.7,0], 0];
_waypoints = waypoints _chopperGroup;
[_chopperGroup, count _waypoints - 1] setWaypointType "MOVE";