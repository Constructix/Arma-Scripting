
private ["_initialPosition"];
private ["_reconWestGroup"];
private ["_taskPatrolResult"];
private ["_activePatrols"];
private ["_reconEastGroup"];
private ["_reconEastGroupPosition"];
private ["_reconEastGroupWP"];
private ["_reconEastGroupLeader"];

_reconEastGroupWP = [];
_initialPosition = [10803.6,9705.96,0];

call RJJ_fnc_setupPlayerSettings;

// create group
_reconWestGroup = [_initialPosition, west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconTeam")] call BIS_fnc_spawnGroup;

// create 2nd group with user function.
_reconWestGroup = [[10814.6,9686.6,0], west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconTeam") ] call RJJ_fnc_createGroup;

_taskPatrolResult = [_reconWestGroup, [10814.6,9686.6,0],50 ] call BIS_fnc_taskPatrol;


// creating another East recon group that is close behind the one that was created in the editor.

_reconEastGroup = [[10702.3,10328.6,0], east, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_reconTeam")] call RJJ_fnc_createGroup;


// create Unit from cfgUnit
[_initialPosition] call RJJ_fnc_createWaypoints;
_reconEastGroupLeader = leader _reconEastGroup;
_reconEastGroupPosition = position _reconEastGroupLeader;


_reconEastGroupWP  = _reconEastGroup addWaypoint[_reconEastGroupPosition, 10];

_reconEastGroupWP  = _reconEastGroup addWaypoint[[10772.7,9681.14,0], 10];
[_reconEastGroup, 1] setWaypointType "MOVE";
[_reconEastGroup, 1] setWaypointBehaviour "AWARE";
