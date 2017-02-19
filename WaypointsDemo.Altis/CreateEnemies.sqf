private ["_toSpawn","_firstWayPoint", "_secondWayPoint", "_thirdWayPoint", "_firstVehicle", "_snipers","_currentMarkerPosition", "_markerPosition"];
_markerPosition = _this select 0;
_toSpawn = ["O_Soldier_A_F", 
			"O_Soldier_TL_F",
			"O_Soldier_LAT_F", 
			"O_Soldier_SL_F", 
			"O_Soldier_A_F",
			"O_Soldier_M_F"];

_currentMarkerPosition  =  getMarkerPos _markerPosition; //position player;
_position  = [[[ _currentMarkerPosition, random 100],["water","out"]]] call BIS_fnc_randomPos;

_sniper1EastGroup = [_position, East, _toSpawn] call BIS_fnc_spawnGroup;
_leader = leader _sniper1EastGroup;
_leader setDir random(360);
_sniper1EastGroup setBehaviour "CARELESS";
// will need to add skill
_taskPatrolHandle  = [_sniper1EastGroup, _position, random (10)] call bis_fnc_taskPatrol;