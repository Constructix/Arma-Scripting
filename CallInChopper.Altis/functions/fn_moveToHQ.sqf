private ["_wp"];
helo_2 vehicleChat "Heading back to Base";
_wp = Helo_pickUpGroup Addwaypoint [position HeliPad_01,0];
_wp setWayPointType "TR UNLOAD";
_wp = Helo_pickUpGroup Addwaypoint [position HeliPad_01,0];
_wp setWayPointType "LAND";
player AddAction ["Call for Evac", "call Rjj_fnc_callForEvac"];