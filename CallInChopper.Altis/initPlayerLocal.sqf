private [ "_unit", "_heliPadMarker","_emptyHeliPadMarker", "_heliStartPos", "_heloGroup", "_result", "_wp", "_wp2", "_trg"];
private _playerPosition;
// so what would happen here.
player AddAction ["Call for Evac", "call Rjj_fnc_callForEvac"];
// we would dynamically create a hidden helipad marker.
// call the choppers in for an evac once got out would reset and send the chopper off to a new AO.
_unit           = player;
_playerPosition =  [_unit]  call Rjj_fnc_getPlayerPosition;
[_unit, _playerPosition]    call Rjj_fnc_createAdditionalHelipads;

