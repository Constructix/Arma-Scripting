params ["_message"];
private ["_playerName"];

_playerName = call BIS_fnc_playerName;
if(_playerName == "Richard") then {
	hint format["%1", _message];
};