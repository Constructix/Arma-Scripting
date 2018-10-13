private ["_group"];
private ["_landingPadLocation"];
private ["_spawnLocation"];
private ["_wp"];
 private ["_gen","_caller", "_id"];

_spawnLocation = [14608.5,16795.9,0];
_firstGroup = [_spawnLocation, west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad")] call BIS_fnc_spawnGroup;
hint "New Group coming to your Chopper...";
_landingPadLocation = getpos helipadLocation;

_wp = _firstGroup addWaypoint[_landingPadLocation, 10, 1 ];
[_firstGroup,1] setWaypointType "MOVE";

{
	_x assignAsCargo chopper;	
	[_x] orderGetIn true;	
} foreach units _firstGroup;
_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;
// remove the action once it is activated
_gen removeAction _id;
chopper addAction["Disembark","Unload.sqf",[],0, false, true];