private ["_playerPosition", "_unit", "_heliPadMarker","_emptyHeliPadMarker", "_heliStartPos", "_heloGroup", "_result"];

_unit           = player;
_playerPosition =  [_unit] call Rjj_fnc_getPlayerPosition;

// hint format["%1\n%2\n%3", ( _playerPosition select 0), 
//                         ( _playerPosition select 1), 
//                         ( _playerPosition select 2)];

// we have got the location for the player.
// Now we  create Helipad  and put the helipad in the player location.
_heliPadMarker = createMarker ["PlayerHeliPadMarker", _playerPosition];
_emptyHeliPadMarker = "Land_HelipadEmpty_F" createVehicle _playerPosition;
_helPad3_position = getPos HeliPad_3;
_helPad4_position = [(_helPad3_position select 0), (_helPad3_position select 1) - 20, (_helPad3_position select 2)];
_nextEmptyHeliPadMarker = "Land_HelipadSquare_F" createVehicle _helPad4_position;
_helo_3 = "B_Heli_Transport_01_F" createVehicle position HeliPad_3;

//create move waypoint
_wp  = helo_2 Addwaypoint [position _emptyHeliPadMarker, 0];
_wp setWaypointType "MOVE";
// create the landing landpoint.
_wp2  = helo_2 Addwaypoint [position _emptyHeliPadMarker, 0];
_wp2 setWaypointType "TR UNLOAD";
_unit AddEventHandler["fired","hint  name _unit"];


_trg = CreateTrigger["GetInChopper", getPos player]

player addEventHandler ["GET IN", "if(player == (_this select 2)) then {hint 'Entered Chopper';};"];

