private ["_veh"];
_veh = _this select 0;

if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};

if (!(_veh isKindOf "helicopter")) exitWith { 
	_veh vehicleChat "This pad is for aircraft service only, soldier!"; 
};

//_veh vehicleChat "Servicing aircraft, please wait ...";
hint "Servicing aircraft, please wait ...";

_veh setFuel 0;

//---------- RE-ARMING

sleep 5;

//_veh vehicleChat "Re-arming ...";
hint "Re-arming ...";

//---------- REPAIRING

sleep 5;

hint "Reparing ..."; //_veh vehicleChat "Repairing ...";

//---------- REFUELING

sleep 5;

//_veh vehicleChat "Refueling ...";
hint "Refueling ...";

//---------- FINISHED

sleep 5;

// _veh setDamage 0;
// _veh vehicleChat "Repaired (100%).";

// _veh setVehicleAmmo 1;
// _veh vehicleChat "Re-armed (100%).";

// _veh setFuel 1;
// _veh vehicleChat "Refuelled (100%).";

// sleep 2;

_veh setDamage 0;
_veh setVehicleAmmo 1;
_veh setFuel 1;

//_veh vehicleChat "Service complete.";
hint "Service Complete.";