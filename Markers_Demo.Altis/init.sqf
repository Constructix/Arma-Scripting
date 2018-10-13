publicVariable "currentAOMarker";

private _position = [9963.55,19357.6,0];
[_position] ExecVM "createMarker.sqf";
// private ["_markerPosition"]; 
 
// _markerPosition = markerPos "Syrta_Position"; 
// hint format["%1 %2 %3", _markerPosition select 0, _markerPosition select 1, _markerPosition select 2]; 
 
// "Syrta_Position" setMarkerShape "RECTANGLE"; 
// "Syrta_Position" setMarkerBrush "BDIAGONAL";
// "Syrta_Position" setMarkerColor "ColorRed";
// "Syrta_Position" setMarkerSize [500,500];
// "Syrta_Position" setMarkerShape "ELLIPSE";

player addAction["Remove Marker", "deleteMarker currentAOMarker"];