/* 
    
    Purpose:    Demostrates several ways to Create towers
                a) Using Markers
                b) Using Create Vehicle and using coordinates array.
    Created:    20160720
*/
// Create the the Marker
// First way of creating a tower.
// Use an existing marker that was set in the editor, called Tom

// Get the marker "Tom" and display the position location for the marker "Tom" just to 
// demostrate the position to the user.
_towerPosition =  getMarkerPos "tom";
_towerXPosition = _towerPosition select 0;
_towerYPosition = _towerPosition select 1;
hint format["xPos %1\nyPos %2", _towerXPosition, _towerYPosition];


// create a new tower using a Marker.
_tower = "Land_TTowerBig_2_F" createVehicle getMarkerPos "tom";

// create Marker through code 
_townRadioTowerMarker = createMarker ["marker1", [14352.3,17506.7]];
// create a new tower using a Marker that was just created.
_townRadioTower = "Land_TTowerBig_2_F" createVehicle getMarkerPos "marker1";

// This demostration we haven't used a marker, just using coordinates on the the map
// and calling createVehicle.
_tower1 = "Land_TTowerBig_2_F" createVehicle [13899.9,19000.0];
// Another demostration of creating another tower using different coordinates.
_tower2 = "Land_TTowerBig_2_F" createVehicle [13899.9,18900.6];
_currentPlayer = player;

// EVENT HANDLER 
// create handle 
// so when the tower gets destroyed a message is displayed.
_towerDestroyedEventHandler = _tower2 addEventHandler ["Explosion", "hint format ['%1 destroyed the tower', player]"];

_towerDestroyedHandler =[];
_towers = [_tower, _tower1];
{
    // Current result is saved in variable _x
    _towerDestroyedHandler  = _x addEventHandler ["Explosion", "hint format ['%1 destroyed the tower', player]"];
    
} forEach _towers;

// display notice
["Tower script has been initialised.", "BIS_fnc_log"] call BIS_fnc_MP;
["Hello World","hint",true,true] call BIS_fnc_MP;

