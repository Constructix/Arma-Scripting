/************************************************************************************************************
* Function 	: listBuild.sqf
* Purpose	: Function calls to SpawnGroup to get the group, and to work out a random position that the 
*             enemy solders are to be placed. At the moment, this is clunky solution, there are far too many variables declared.
*             
* Date      : 20191110
* Author    : YogiBear
**************************************************************************************************************/

params ["_buildings", "_markerName"];
private ["_buildingData"];
private ["_spawnedGroup"];
private ["_currentBuilding"];
private ["_spawnedBuildingPos"];
private ["_randomBuildingPositionIndex"];
private ["_markerPosition"];
private ["_units"];
private ["_unitCount"];
private ["_unitCounter"];
private ["_buildingPositionsCount"];
private ["_buildingPosition"];
private ["_currentUnit"];
private ["_buildingCounter"];
private ["_tempSpawnGroup"];
private ["_playerName"];

_unitCounter  = 0;
_buildingCounter = count _buildings;

_buildingData = [];
diag_log format["[RJC] - [ListBuild] - Start"];
_markerPosition  = getMarkerPos _markerName;

_spawnedGroup  = [[_markerPosition select 0, _markerPosition select 1, _markerPosition select 2], EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_reconPatrol")] call BIS_fnc_spawnGroup;

player setVariable["spawnGroup", _spawnedGroup];
_units = units _spawnedGroup;
_unitCount = count (_units);


diag_log format["[RJC] - [ListBuild] - Array Count for _buildings: %1", count _buildings];
{	
	_buildingData = _x;
	_currentBuilding = _buildingData select 0;
	_buildingPositionsCount =  _buildingData select 1;
	_randomBuildingPositionIndex =  [0, _buildingData select 1] call BIS_fnc_randomInt;
	_buildingPosition = _currentBuilding buildingPos _randomBuildingPositionIndex;		
	diag_log format["[RJC] - [ListBuild] - Building: %1 TotalNumber of Positions: %2 RandomPosition Selected:%3", _currentBuilding, _buildingPositionsCount, _buildingPosition];
	if(_unitCount < _buildingCounter) then {
		_currentUnit = _units select _unitCounter;
		_currentUnit setPos _buildingPosition;
		_currentUnit disableAI "PATH";
		_currentUnit setSkill ["spotDistance", 1.00];
		_unitCounter = _unitCounter + 1;
	};	
	// strip off a unit from the group and assign to the building position listed above.
	_buildingCounter = _buildingCounter  + 1;

} forEach _buildings;
diag_log format["Now setting units a position from the script"];
diag_log format["[RJC] - [ListBuild] - End"];