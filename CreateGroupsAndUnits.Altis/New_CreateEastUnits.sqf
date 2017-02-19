private ["_randomUnit"];
_toSpawn = [];                  // initialise array
_enemySoldiers = getArray (missionConfigFile >> "enemy" >> "infantry");
_numberOfWestUnits = round(6 + random(5));
for[{_index =0}, {_index < _numberOfWestUnits}, { _index = _index + 1}] do
{
    _rand = round(6 + random(4));
    for [{_c = 0}, {_c < _rand}, {_c = _c + 1}] do
    {
        _randomUnit = _enemySoldiers  call BIS_fnc_selectRandom;  
        _toSpawn = _toSpawn + [_randomUnit];
    };
    _position  = [[[getMarkerPos "enemy_marker", random (500)]],["water","out"]] call BIS_fnc_randomPos;
    EastGroup = [_position, East, _toSpawn] call BIS_fnc_spawnGroup; 
    
    _toSpawn = []; 
};