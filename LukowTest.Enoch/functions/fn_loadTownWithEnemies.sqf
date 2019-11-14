/************************************************************************************************************
* Function 	: loadTownWithEnemies.sqf
* Purpose	: This is the manager function that will call getBuildings function to retrieve all buildings in a 
*             50 metre radius, Once this has been done, call to listBuild, will go and spawn a group and 
*             randomly position each of the team members in a building. If the number of spawn is greater than the
*             building count in x meter radius, the remaining spawns will move outside a building.
*             
* Date      : 20191110
* Author    : YogiBear
**************************************************************************************************************/



private ["_markerName"];
private ["_handle"];
private ["_message"];
_message = "Spawning Enemies into Town";
_handle = [] spawn {
	_markerName =  player getVariable "markerName";
	diag_log format["[RJC] - [LoadTownWithENemies] - MarkerName: %1", _markerName];
	private _buildings  = [_markerName] call RJC_fnc_getBuildings;
	[_buildings, _markerName] call RJC_fnc_assignEnemiesToBuildings;
	
};
[_message] call RJC_fnc_notifyAdmin;


