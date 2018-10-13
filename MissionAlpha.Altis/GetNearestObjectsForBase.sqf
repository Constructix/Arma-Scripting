params ["_buildingNames"];

private [ "_buildings", "_buildingPositions"];
private ["_group"];
private ["_unit"];
private ["_patrolGroup"];
private ["_buildingPosition"];
private ["_buildingName"];
private ["_scriptCompleted"];
_buildings = nearestObjects[marksman,["Land_Cargo_HQ_V1_F","Land_Cargo_House_V1_F", "Land_Cargo_Patrol_V1_F"], 40];
 {	
	_buildingName = _x;
	_group = createGroup [east, true];
	// Need to create a unit an add to building position.
	_buildingPositions = [_buildingName] call BIS_fnc_buildingPositions;
	{		
		private _handleResult =[_group] execVM "Units\CreateBaseUnits.sqf";	
		
	} forEach _buildingPositions;	
} forEach _buildings;
// create patrol unit.

[_buildings] ExecVM "Patrols\CreatePatrolGroup.sqf";