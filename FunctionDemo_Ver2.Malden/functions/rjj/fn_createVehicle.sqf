/* -------------------------------------------------------------------------------------------------------------

	Function	: 	CreateVehicle.sqf
	Purpose		: 	Creates a vehicle based on the vehicleClassName that is passed in as the 2nd parameter to this function.
	Params      :   _markerLocation  - Location of where the vehicle is to be created.
					_vehicleClassName - Name of the vehicle class to be created.
	Returns     : 	vehicleObject which is a type based on the vehicleClassName that is passed in as 2nd parameter.
	DateTime	:	20181007
-------------------------------------------------------------------------------------------------------------*/

params ["_markerLocation", "_vehicleClassName"];
private ["_vehicleObject"];
_vehicleObject =  _vehicleClassName createVehicle _markerLocation;
[_vehicleObject, true, true, true] call bis_fnc_initVehicle;
_vehicleObject;