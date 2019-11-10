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
_markerName  =  player getVariable "markerName";
private _buildings  = [_markerName] call RJC_fnc_getBuildings;
diag_log format["[RJC] - [PrintBuildings] - Start"];
diag_log format["------------------------------------------------------------------------------------ "];
diag_log format["[RJC] - [PrintBuildings] - Looping through Buildings array:"];
{
	_buildingData = _x;
	diag_log format["[RJC] - [PrintBuildings] - Name: %1 Number of Positions Available: %2", _buildingData select 0, _buildingData select 1 ];
	
} forEach _buildings;
diag_log format["[RJC] - [PrintBuildings] - Completed ListBuild"];


[_buildings, _markerName] call RJC_fnc_listBuild;