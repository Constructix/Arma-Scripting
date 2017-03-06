/* ****************************************************************************************************
*
*
*   Parameters 	: _markerName -  (string)	Name of marker that is used as a reference point in the current AO
*								that units will be created from. 
*				  _units      - 	(array) Units that are to be created.
*				  _behaviour   - 	(string) sets the behaviour of the group.
*/
params ["_markerName", "_units", "_behaviour"];
private ["_markerPosition", "_unitStartPosition", "_unitGroup", "_groupLeader", _taskPatrolHandle];

// Create Position to spawn group from.
_markerPosition = getMarkerPos _markerName;
_unitStartPosition = [[[_markerPosition, random 100], ["water", "out"]]] call BIS_fnc_randomPos;

// create the group
_unitGroup = [_unitStartPosition, East, _units] call BIS_fnc_spawnGroup;
// set direction of leader of group
_groupLeader = leader _unitGroup;
_groupLeader setDir  random(360);
_unitGroup setBehaviour _behaviour;

// Create the taskPatrol
_taskPatrolHandle = [_unitGroup, _unitStartPosition, random(10)] call bis_fnc_taskPatrol;







