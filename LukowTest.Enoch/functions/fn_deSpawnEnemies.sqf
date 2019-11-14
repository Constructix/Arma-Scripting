/*******************************************************************************************************************
* Function 	: deSpawnEnemies
* Purpose	: Despawns enemies that have been added to the players variable ["spawnGroup"]
* Date      : 2019110     
* Author    : YogiBear
*******************************************************************************************************************/

private ["_spawnGroup"];
private ["_playerName"];
private ["_message"];

_message = "DeSpawning Enemies From Area.";
_spawnGroup = player getVariable "spawnGroup";
diag_log format["[RJC] - [deSpawnEnemies] - Deleting enemies, since you are outside the trigger area."];
{
	 diag_log format["[RJC] - [deSpawnEnemies] - about to delete unit %1", _x];
	 deleteVehicle _x;	
} forEach units _spawnGroup;

deleteGroup _spawnGroup;
player setVariable["spawnGroup", ""];
diag_log format["[RJC] - [deSpawnEnemies] - Deleted all enemies that spawned in the trigger area."];

[_message] call RJC_fnc_notifyAdmin;

