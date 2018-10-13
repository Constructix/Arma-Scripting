private ["_playerPosition"];
private ["_currentAoMarker"];
private ["_currentAOMarkerName"];
private ["_markerName"];

_markerName = "ao";
_playerPosition = position player;
currentAoMarker = createMarker[_markerName, _playerPosition];

_markerName setMarkerShape "RECTANGLE"; 
_markerName setMarkerBrush "BDIAGONAL";
_markerName setMarkerColor "ColorRed";
_markerName setMarkerSize [500,500];
_markerName setMarkerShape "ELLIPSE";
player addAction["Remove Marker", "RemoveMarker.sqf"];