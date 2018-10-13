/* -------------------------------------------------------------------------------------------------------------

	Function	: 	CreateHelicopterWithName.sqf
	Purpose		: 	Creates a helicopter at a location and helicopter class Name which is passed in from calling method.
	DateTime	:	20181007

-------------------------------------------------------------------------------------------------------------*/
params ["_markerLocation", "_helicopterClassName"];
private ["_chopperObject"];
_chopperObject =  _helicopterClassName createVehicle _markerLocation;
[_chopperObject, true, true, true] call bis_fnc_initVehicle;
_chopperObject;