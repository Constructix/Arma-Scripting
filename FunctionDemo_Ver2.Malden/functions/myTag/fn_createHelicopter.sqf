/* -------------------------------------------------------------------------------------------------------------

	Function	: 	CreateHelicopter.sqf
	Purpose		: 	Creates a helicopter at a location that is passed in from calling method.
	DateTime	:	20181007

-------------------------------------------------------------------------------------------------------------*/

params ["_markerLocation"];
private ["_chopperName"];
private ["_chopperObject"];

_chopperName = "B_CTRG_Heli_Transport_01_tropic_F";
_chopperObject =  _chopperName createVehicle _markerLocation;
[_chopperObject, true, true, true] call bis_fnc_initVehicle;

