//
// Description :
//                Init Client when connection to server.

// Parameters   :
//                0 player(object)

private _player = param[0];
private _markers  = allMapMarkers;
private _numberOfMarkers = count _markers;

removeAllWeapons _player;
hint "All Weapons have been removed!";
