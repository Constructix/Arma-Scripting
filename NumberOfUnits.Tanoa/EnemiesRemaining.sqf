private ["_enemyCounter", "_currentPlayerPosition", "_toSpawn", "_sniper1EastGroup", "_leader"];
_enemyCounter = 0;
_enemyCounter  = east countSide allUnits;
hint format["Number of Enemies Remaining: %1", _enemyCounter];
if(_enemyCounter == 0) then
{
	["TaskSucceeded",["","No more enemies"]] call  bis_fnc_showNotification;
	
	hint "Good Job lads, thanks for taking down those enemies";
	_toSpawn = [];
	_toSpawn = _toSpawn + ["O_sniper_F", "O_Soldier_A_F", "O_Soldier_TL_F", "O_Soldier_LAT_F", "O_Soldier_SL_F", "O_Soldier_A_F","O_Soldier_M_F"];
	_toSpawn = _toSpawn + ["O_spotter_F"];

	_currentPlayerPosition  = position player;
	_position  = [[[ _currentPlayerPosition, random 500],["water","out"]]] call BIS_fnc_randomPos;
	
	_sniper1EastGroup = [_position, East, _toSpawn] call BIS_fnc_spawnGroup;
	execVM "EnemyCheck.sqf";
	_leader = leader _sniper1EastGroup;
	_leader setDir random(360);
	_sniper1EastGroup setBehaviour "stealth";
	// will need to add skill
	_taskPatrolHandle  = [_sniper1EastGroup, _position, random (50)] call bis_fnc_taskPatrol;

	_waypoints = waypoints _sniper1EastGroup;
	[_sniper1EastGroup, 1] setWaypointBehaviour "STEALTH";
	
	hint "Enemies have spawned, get down quick and fight.";	
	
}
