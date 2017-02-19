private [   "_snipers", 
            "_currentMarkerPosition",
            "_sniperRandomSpawnPosition", 
            "_sniper1EastGroup", 
            "_sniperLeader", 
            "_sniperPatrolHandle", 
            "_markerPosition"];
_snipers =["O_sniper_F","O_spotter_F"];
_markerPosition = _this select 0;

_currentMarkerPosition  	= getMarkerPos _markerPosition; //position player;
_sniperRandomSpawnPosition 	= [[[ _currentMarkerPosition, random 100],["water","out"]]] call BIS_fnc_randomPos;
_sniper1EastGroup 			= [_sniperRandomSpawnPosition, East, _snipers] call BIS_fnc_spawnGroup;
_sniperLeader 				= leader _sniper1EastGroup;
_sniperLeader setDir random(360);
_sniper1EastGroup setBehaviour "CARELESS";
_sniperPatrolHandle 		= [_sniper1EastGroup, _sniperRandomSpawnPosition, random(20)] call bis_fnc_taskPatrol;