private ["_firstVehicle", "_AOMarkerPosition" ];
_firstVehicle = ["O_MRAP_02_gmg_F"];

_AOMarkerPosition = getMarkerPos "marker_0";
// spawn Ifrits   
for[{_x = 0;},{_x <2},{_x = _x + 1}] do {
	private ["_newVehiclePosition", "_xPosition"];
	_xPosition = _AOMarkerPosition select  0;
	_xPosition = _xPosition + 10;
	_newVehiclePosition = [_xPosition, _AOMarkerPosition select 1, _AOMarkerPosition select 2];

	_position  = [[[ _newVehiclePosition, random 100],["water","out"]]] call BIS_fnc_randomPos;	
	_vehicleSpawnGroup = [_position, East, _firstVehicle] call BIS_fnc_spawnGroup;
	_vehicleSpawnTaskPatrolHandle = [_vehicleSpawnGroup, _position, random(50)] call bis_fnc_taskPatrol;	
}
 