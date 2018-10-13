private ["_locations"];
_locations = [[8098.59,10496.3,1.90735e-006],[8102.1,10451.3,0]];
{	
	_createdHelicopter =[_x, "B_T_VTOL_01_infantry_F"] call myTag_fnc_createHelicopterWithName;
	_createdHelicopter setDir 270; 
} forEach _locations;