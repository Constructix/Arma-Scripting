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
private ["_searchArea"];

_buildingObjects = [];
_buildingPositions  = [];
_buildings = [];
_buildingData = [];


// BuildingData is a data structure that is an array of the following ctData
// Index 0  - Building object
// Index 1  - Number of Available Positions in the Building, this is used to set a unit inside a building.
// Returns the building.

_markerPosition = markerPos _markerName;
_searchArea =   [50, 100] call BIS_fnc_randomInt;
_allNearbyObjects = nearestObjects[_markerPosition, [],_searchArea]; 
{

	_buildingPositions  = [_x] call BIS_fnc_BuildingPositions;
	if(count _buildingPositions >  0 ) then {
		// Build up the data structure to store the building and the number of positions in the building.
		_buildingData append[_x];
		_buildingData append[_buildingPositions];
		_buildingData append[]; // simulates a position that has a unit, once we have go through the units and assign to the position, therefore the positions will be randomly selected.
		_buildings append[_buildingData];				
		_buildingData = [];
	}
	else {
		//diag_log format["[RJC] - [getBuilding] -                  NOT a building - %1", _x];
	};
	
} forEach _allNearbyObjects;
_buildings // return back the buildings in the area specified. at this stage 50 metres.