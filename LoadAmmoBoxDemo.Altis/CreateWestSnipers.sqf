// get the location of the firstIfrit
private ["_startPlayerPosition","_troopsToSpawn","_troopsToSpawnStartPosition","_sniperGroup","_sniperLeader","_sniperTaskPatrolHandle", "_sniperWayPoints"];
_troopsToSpawn = ["O_sniper_F", "O_spotter_F"];
// this should be function, pass in the array of troops to spawn. and creates them.

_startPlayerPosition =  getPos first_Ifrit;
// create the spawn positions
_troopsToSpawnStartPosition  = [[[_startPlayerPosition, random 20],["water","out"]]] call BIS_fnc_randomPos;
// create the spawn group
_sniperGroup = [_troopsToSpawnStartPosition, East, _troopsToSpawn] call BIS_fnc_spawnGroup;
_sniperGroup setBehaviour "AWARE";
// set the direction of the leader to random direction between 0 - 360 degrees, otherwise all spawns will start in the same direction.
_sniperLeader = leader _sniperGroup;
_sniperLeader setDir random(360);
// set up the task patrol to keep moving.
 _sniperTaskPatrolHandle  = [_sniperGroup, _troopsToSpawnStartPosition, random(30)] call Bis_fnc_taskPatrol;
 _sniperWayPoints = waypoints _sniperGroup;
 [_sniperGroup,1] setWaypointBehaviour "STEALTH";





