private ["_startPosition", "_endPosition"];
private ["_csatGroup"];
private ["_enemyChopperName"];
private ["_enemyChopperObject"];
private ["_cstTroops"];
private ["_chopperGroup"];
private ["_enemyGroup"];
private ["_enemyUnits"];
private ["_wp"];
private ["_csatGroupWP"];
private ["_teams"];

// setup property values ready for creation, waypoints.
_enemyChopperName = "O_Heli_Transport_04_covered_F";
_startPosition = [693.215,12194.2,0];

_chopperGroup = createGroup east;

_enemyChopperObject = [_startPosition, _enemyChopperName]  call myTag_fnc_createHelicopterWithName;
_startPosition = [678.629,12188.3,0];

//configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_reconTeam"
//configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "O_G_InfSquad_Assault"
_enemyGroup = [_startPosition, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "O_G_InfSquad_Assault")] call BIS_fnc_spawnGroup;


[_enemyChopperObject] join _chopperGroup;
[_enemyChopperObject, _chopperGroup] call BIS_fnc_spawnCrew;
// load units into chopper
_enemyunits = units _enemyGroup;
{
	// Current result is saved in variable _x
	_x assignAsCargo _enemyChopperObject;
	[_x] orderGetIn true;	
} forEach _enemyunits;

// now create waypoints to fly the chopper to the west units and see what happens.
_wp = _chopperGroup addWaypoint[[684.752,12207.9,0], 23];
_wp setWaypointBehaviour "CARELESS";

[_chopperGroup, [7923.49,10192.3,0], _enemyChopperObject] spawn BIS_fnc_wpLand;
_wp = _chopperGroup addWaypoint[[7923.49,10192.3,0],23];
[_chopperGroup, 2] setWaypointType "TR Unload";

_csatGroupWP = _enemyGroup addWaypoint[[8120.8,10043.8,0], 10];
[_enemyGroup, 1] setWaypointType "MOVE";

_wp = _chopperGroup addWaypoint[[6654.4,8911.63,0],1];
[_chopperGroup, 3] setWaypointType "move";


_wp = _chopperGroup addWaypoint[[6654.3,8911.63,0],1];
[_chopperGroup, 3] setWaypointType "move";
