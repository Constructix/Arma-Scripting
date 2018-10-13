params ["_markerPosition"];

createMarker ["Marker1", position _markerPosition]
currentAOMarker = markerPos _markerPosition; 

currentAOMarker setMarkerShape "RECTANGLE"; 
currentAOMarker setMarkerBrush "BDIAGONAL";
currentAOMarker setMarkerColor "ColorRed";
currentAOMarker setMarkerSize [500,500];
currentAOMarker setMarkerShape "ELLIPSE";
