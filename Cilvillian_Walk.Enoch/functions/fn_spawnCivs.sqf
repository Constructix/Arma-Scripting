private ["_markerPosition"];
private ["_cilvillians"];
private ["_unit"];
private ["_civGroup"];
private ["_selectedCiv"];
private ["_startCivPosition"];

private ["_waypoints"];
private ["_waypoint"];
_markerPostion = [];
_waypoints = [];
_cilvillians = ["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_p_fugitive_F"];
_civGroup =  createGroup civilian;
_markerPosition =  getMarkerPos "topolinMarker";

for [{_i = 0}, {_i < 40}, {_i = _i + 1}] do
{
	// create randomPosition
	_selectedCiv = [0, (count _cilvillians)-1] call BIS_fnc_randomInt;
	_startCivPosition = [[[_markerPosition, 300, 300]], ["water"]] call BIS_fnc_randomPos;
	diag_log format["%1", _startCivPosition];
	_unit =  _cilvillians select _selectedCiv CreateUnit[_startCivPosition,  _civGroup];
	// create waypoints 

};