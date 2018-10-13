 private ["_helicopterPosition"];
 private ["_hangerPosition"];
 private ["_gen","_caller", "_id"];

_helicopterPosition = [];
_helicopterPosition = getPos chopper; 
_hangerPosition = getMarkerPos "marker_0"; 
 _firstGroup = [_hangerPosition, west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad")] call BIS_fnc_spawnGroup;
 hint "New Group coming to your Chopper...";

 _wp = _firstGroup addWaypoint[_helicopterPosition, 10, 1 ];
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

_action = chopper addAction ["Unload units", "UnloadUnits.sqf",[], 10,true,false,"","",-1,false,"",""];