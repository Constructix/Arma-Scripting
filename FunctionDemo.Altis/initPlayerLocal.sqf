
// initPlayerLocal.sqf

params["_unit","_isJIP"];

// private _unit   = param[0];
// private _isJIP  = param[1];

if(!_isJIP) then
{
    // Need to 
    // 1. supply the tag
    // 2. Add fnc
    // 3. Then the function name.
    hint "Welcome to the mission on mission Start";
    [_unit] call Rjj_fnc_playerSpawn;
};
if(_isJIP) then
{
    hint "Why are you so late!";
};