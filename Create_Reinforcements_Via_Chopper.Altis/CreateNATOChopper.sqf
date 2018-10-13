hint "Wave 1 Incoming";

// vehicles to spawn
_spawns = ["O_Heli_Attack_02_F","O_MBT_02_cannon_F","O_MRAP_02_gmg_F"];

_loc = getmarkerpos "apwave1"; // spawn around this marker

// Spawn vehicles
{
_spw = _x;

_position = _loc findEmptyPosition [0,100,_spw]; // find free position


_apwave1 = [_position, east, [_spw]] call BIS_fnc_spawnGroup;

_apwp1 = _apwave1 addWaypoint [getmarkerpos "apwp1", 0]; 
_apwp1 setWaypointType "MOVE"; 
_apwp1 setWaypointSpeed "FULL"; 
_apwp1 setWaypointBehaviour "AWARE"; 
_apwp1 setWaypointFormation "WEDGE";


sleep 0.25;
} foreach _spawns;



// lastly spawn the infantry

sleep 5; // wait until the vehicles have driven away

_position = _loc findEmptyPosition [0,100];
_inf = ["O_Soldier_LAT_F","O_soldier_M_F","O_soldier_M_F","O_sniper_F","O_Urban_HeavyGunner_F","O_Urban_HeavyGunner_F"]; // men to spawn
_apwave1 = [_position, east, _inf] call BIS_fnc_spawnGroup;

_apwp1 = _apwave1 addWaypoint [getmarkerpos "apwp1", 0]; 
_apwp1 setWaypointType "MOVE"; 
_apwp1 setWaypointSpeed "FULL"; 
_apwp1 setWaypointBehaviour "AWARE"; 
_apwp1 setWaypointFormation "WEDGE";