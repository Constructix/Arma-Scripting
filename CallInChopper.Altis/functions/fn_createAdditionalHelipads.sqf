
params["_unit", "_playerPosition"];
// we have got the location for the player.
// Now we  create Helipad  and put the helipad in the player location.
_heliPadMarker = createMarker ["PlayerHeliPadMarker", _playerPosition];
// create a new helipad based on location of Helipad_3

_helPad3_position = getPosASL HeliPad_3;
_helPad3_position =  [_helPad3_position select 0, _helPad3_position select 1, 0];
_helo_3 = "B_Heli_Transport_01_F" createVehicle _helPad3_position;
_helPad4_position = [(_helPad3_position select 0), (_helPad3_position select 1) - 20, (_helPad3_position select 2)];
_nextEmptyHeliPadMarker = "Land_HelipadSquare_F" createVehicle _helPad4_position;   // create Empty helipad.