/* ****************************************************************************************************
*	Name			:	fn_CreateUnitPatrol.sqf
*	Purpose		: 	Creates Unit patrol based on the following paramaters supplied:
*						MarkerName 
						Unit
						behaviour
*   Parameters 	: 	_markerName 	-  (string)	Name of marker that is used as a reference point in the current AO
*											that units will be created from. 
*				  	_units      	- 	(array) Units that are to be created.
*				  	_behaviour   - 	(string) sets the behaviour of the group.
*   Returns			_taskPatrolHandle; 
*/
params ["_markerName", "_units", "_behaviour"];
private ["_markerPosition", "_unitStartPosition", "_unitGroup", "_groupLeader", _taskPatrolHandle];

// Create Position to spawn group from.
_markerPosition = getMarkerPos _markerName;
_unitStartPosition = [[[_markerPosition, random 100], ["water", "out"]]] call BIS_fnc_randomPos;

// create the group
_unitGroup = [_unitStartPosition, East, _units] call BIS_fnc_spawnGroup;

[_unitGroup, _behaviour] call Common_fnc_SetGroupDirection;

// Create the taskPatrol
_taskPatrolHandle = [_unitGroup, _unitStartPosition, random(10)] call bis_fnc_taskPatrol;
_taskPatrolHandle;







