private ["_unit","_playerPosition","_emptyHeliPadMarker","_wp", "_trg"];

_unit           = player;
_playerPosition =  [_unit] call Rjj_fnc_getPlayerPosition;
// create invisible helipad where the player is currently located.
_emptyHeliPadMarker = "Land_HelipadEmpty_F" createVehicle _playerPosition;

// this is where the liftoff and moving to the current player code is at.
//create move waypoint
_wp  = Helo_pickUpGroup Addwaypoint [position _emptyHeliPadMarker, 0];
_wp setWaypointType "MOVE";
// create the landing landpoint.
_wp2  = Helo_pickUpGroup Addwaypoint [position _emptyHeliPadMarker, 0];
_wp2 setWaypointType "TR UNLOAD";
_trg = CreateTrigger["GetInChopper", getPos player];
hint "Evac has been called. Please wait...";
helo_2 AddEventHandler["GetIn", "call Rjj_fnc_moveToHQ"];
_unit RemoveAction 0;