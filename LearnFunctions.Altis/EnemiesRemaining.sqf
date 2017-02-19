private ["_enemyCounter", "_currentPlayerPosition", "_toSpawn", "_sniper1EastGroup", "_leader"];

// convert into a function.
// _enemyCounter = 0;
// _enemyCounter  = east countSide allUnits;
hint format["Number of Enemies Remaining: %1", call Rjj_fnc_enemiesRemaining];

if(_enemyCounter == 0) then
{
	["TaskSucceeded",["","No more enemies"]] call  bis_fnc_showNotification;
	
	hint "Good Job lads, thanks for taking down those enemies";

	_toSpawn = getArray (missionConfigFile >> "enemy" >> "infantry"); // get the enemy array from enemy.hpp file.

	_currentPlayerPosition  = position player;
	_position  = [[[ _currentPlayerPosition, random 500],["water","out"]]] call BIS_fnc_randomPos;
	
	_sniper1EastGroup = [_position, East, _toSpawn] call BIS_fnc_spawnGroup;
	execVM "EnemyCheck.sqf";
	_leader = leader _sniper1EastGroup;
	_directionOfGroup random(360);

	_leader setDir _directionOfGroup;  // groupDIR
	_sniper1EastGroup setBehaviour "stealth";
	// will need to add skill
	_taskPatrolHandle  = [_sniper1EastGroup, _position, random (50)] call bis_fnc_taskPatrol;
	
	hint "Enemies have spawned, get down quick and fight.";	
	
}
