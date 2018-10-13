private ["_playerPosition","_randomPosition","_veh"];
private ["_vehicles", "_selectedVehicle","_v"];

_vehicles = ["C_Offroad_01_F","C_Heli_light_01_digital_F","C_Offroad_02_unarmed_F","C_SUV_01_F"];


_playerPosition = position player;


for [{_i = 0},{_i < 5},{_i = _i+1}] do
{
	_randomPosition = [[[_playerPosition,50]]] call BIS_fnc_randomPos;
	hint format["%1 %2 %3", _randomPosition select 1, _randomPosition select 2, _randomPosition select 3];
	_selectedVehicle = [0, count _vehicles] call BIS_fnc_randomInt;	
	hint format["%1",_selectedVehicle];
	hint format["%1", _vehicles select _selectedVehicle];
	_veh = _vehicles select _selectedVehicle;
	_v = _veh createVehicle _randomPosition;
}
