/************************************************************************************************************
* Function 	: listBuild.sqf
* Purpose	: Function calls to SpawnGroup to get the group, and to work out a random position that the 
*             enemy solders are to be placed. At the moment, this is clunky solution, there are far too many variables declared.
*             
* Date      : 20191113
* Author    : YogiBear
**************************************************************************************************************/

params ["_buildings", "_markerName"];
private ["_buildingData"];
private ["_spawnedGroup"];
private ["_currentBuilding"];
private ["_units"];
private ["_unitCount"];
private ["_currentUnit"];
private ["_buildingPositions"];
private ["_selectedBuildingPosition"];

_buildingPositons = [];

_availableBuildingPositions = [];
_selectedBuildingPosition = [];

_spawnedGroup = [_markerName] call RJC_fnc_spawnEnemies;
player setVariable["spawnGroup", _spawnedGroup];
_units = units _spawnedGroup;
_unitCount = count (_units);
diag_log format["Number of units to assign to: %1", _unitCount];

/* INLINE FUNCTIONS */
getSelectedBuilding = {
	params ["_buildings"]; 	
	private _selectedBuilding = _buildings call BIS_fnc_selectRandom;	
	_selectedBuilding;	
};
getSelectedBuildingPosition = {
	params ["_buildingPositions"];
	private _randomBuildingPositionIndex =  _buildingPositions call BIS_fnc_selectRandom;
	_randomBuildingPositionIndex;
};
for[{_i=0},{_i < _unitCount},{_i = _i + 1}] do 
{
	if(count _buildings > 0) then {	
		_currentBuilding = [_buildings] call getSelectedBuilding;
		_buildingPositions = _currentBuilding select 1;		
		_selectedBuildingPosition =  [_buildingPositions] call getSelectedBuildingPosition; 
	 	_currentUnit = _units select _i;
		_currentUnit setPos _selectedBuildingPosition;
		_currentUnit disableAI "PATH";
		_currentUnit setSkill ["spotDistance", 1.00];				
		diag_log format["Assigned %1 to Building %2 at Position: %2", _currentUnit, _currentbuilding, _selectedBuildingPosition]
	};	
};