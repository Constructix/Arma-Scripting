private ["_randomUnit"];
_toSpawn = [];                  // initialise array
_westSoldiers= 
 [ "B_Story_SF_Captain_F",
    "B_Story_Protagonist_F",
    "B_Soldier_F",
    "B_Soldier_TL_F",
    "B_recon_exp_F",
    "B_recon_M_F",
    "B_Soldier_SL_F",
    "B_Sniper_F",
    "B_medic_F",   
    "B_recon_medic_F",
    "B_recon_M_F"
 ];
//getArray (missionConfigFile >> "westUnits" >> "infantry");
_numberOfWestUnits = round(6 + random(8));
for[{_index =0}, {_index < _numberOfWestUnits}, { _index = _index + 1}] do
{
    _rand = round(6 + random(4));
    for [{_c = 0}, {_c < _rand}, {_c = _c + 1}] do
    {
        _randomUnit = _westSoldiers  call BIS_fnc_selectRandom;  
        _toSpawn = _toSpawn + [_randomUnit];
    };
    _position  = [[[getMarkerPos "airport_marker", random (500)]],["water","out"]] call BIS_fnc_randomPos;
	WestGroup = [_position, West, _toSpawn] call BIS_fnc_spawnGroup; 
    _taskPatrolHandle  = [WestGroup, _position, 10] call bis_fnc_taskPatrol;
    _toSpawn = []; 
};
