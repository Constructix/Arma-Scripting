//Arma 3 marker script:
// Create a marker
// bob = createMarker ["marker1", [14602,20779]]; 
// bob setMarkerShape "ELLIPSE"; 
// "marker1" setMarkerColor "ColorRed"; 
// "marker1" setMarkerSize [500, 500]; 
// "marker1" setMarkerBrush "FDiagonal";



// should return the current AO and 
CurrentAO setMarkerShape "ELLIPSE";
CurrentAO setMarkerColor "ColorRed"; 
CurrentAO setMarkerSize [500, 500];
CurrentAO setMarkerBrush "FDiagonal";

_toSpawn = [];
_toSpawn = _toSpawn + ["O_sniper_F"];
_toSpawn = _toSpawn + ["O_spotter_F"];

_position  = [[[getMarkerPos CurrentAO, random 500],["water","out"]]] call BIS_fnc_randomPos;
// create sniper East group
_sniper1EastGroup = [_position, East, _toSpawn] call BIS_fnc_spawnGroup;
_leader = leader _sniper1EastGroup;
_leader setDir random(360);
_sniper1EastGroup setBehaviour "stealth";
// will need to add skill
_taskPatrolHandle  = [_sniper1EastGroup, _position, random (50)] call bis_fnc_taskPatrol;

_waypoints = waypoints _sniper1EastGroup;
[_sniper1EastGroup, 1] setWaypointBehaviour "STEALTH";
_eastTeam = ["O_recon_F", "O_recon_exp_F","O_soldier_repair_F"];

for [{_x =0}, {_x < 4}, {_x = _x + 1}] do
 {
    _position  = [[[getMarkerPos CurrentAO, random 500],["water","out"]]] call BIS_fnc_randomPos;    
    _eastT1 =  [_position, East, _eastTeam] call BIS_fnc_spawnGroup;
    _leader = leader _eastT1;
    _leader setDir random(360);  
    _eastT1 setBehaviour "stealth";
};


