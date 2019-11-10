/************************************************************************************************************
* Function 	: getBuildings.sqf
* Purpose	: Function to return all buildings in a specified area, at this stage, 50 metres is the hard coded 
*             value. However, this in the future should be configurable, and or be a ramdom value.
*             This function retrieves the nearestobjects in 'x' = 50 metre radius and checks if the positions in the objects
*             is greater than zero, if so, then this can be classed as a building and is added to a building array.
* Returns   : Array of Array describing the building and positions available.             
* Date      : 20191110
* Author    : YogiBear
**************************************************************************************************************/

params ["_markerName"];
private ["_markerPosition"];
private ["_buildingObjects"];
private ["_allNearbyObjects"];
private ["_buildingPositions"];
private ["_buildingData"];
private ["_buildings"];

_buildingObjects = [];
_buildingPositions  = [];
_buildings = [];
_buildingData = [];


// BuildingData is a data structure that is an array of the following ctData
// Index 0  - Building object
// Index 1  - Number of Available Positions in the Building, this is used to set a unit inside a building.
// Returns the building.

_markerPosition = markerPos _markerName;
diag_log format["[RJC] - [getBuildings] - Start"];
diag_log format["[RJC] - [getBuilding] - Calling nearest Objects that are a building"];
_allNearbyObjects = nearestObjects[_markerPosition, [], 50]; 
diag_log format["[RJC] - [getBuilding] - All Nearest Objects"];
{

	_buildingPositions  = [_x] call BIS_fnc_BuildingPositions;
	if(count _buildingPositions >  0 ) then {
		// Build up the data structure to store the building and the number of positions in the building.
		_buildingData append[_x];
		_buildingData append[ count _buildingPositions];
		_buildings append[_buildingData];
		_buildingData = [];
		diag_log format ["[RJC] - [getBuilding] - Building Name: %1 Position: %2  Number of Building Positions: %3", _x, getPos _x, count _buildingPositions];
	}
	else {
		diag_log format["[RJC] - [getBuilding] -                  NOT a building - %1", _x];
	};
	
} forEach _allNearbyObjects;
diag_log format["[RJC] - [getBuilding] - Finished Looping through the buildings collection."];
diag_log format["[RJC] - [getBuildings] - End"];
_buildings // return back the buildings in the area specified. at this stage 50 metres.