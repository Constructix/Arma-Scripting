private ["_location"];
private ["_locations"];
private ["_helicopterClassName"];
private ["_createdHelicopter"];
private ["_helicopterClassNames"];
private ["_helicopterClass"];

private ["_index"];

_locations = [[8014.01,10045.5,0],[8013.79,10088.4,0],[8016.4,10135.7,0],[8039.64,10264.9,0],[8034.5,10312.1,0],[8038.46,10358.4,0] ];
_helicopterClassNames = ["B_CTRG_Heli_Transport_01_sand_F", "B_Heli_Light_01_F", "B_Heli_Transport_01_F", "I_Heli_Transport_02_F"];
_location =[];

/* Call to create helicopter code, works but creates just a ghosthawk */
/*
_location =[8029.07,10311.9,0];
// call to create helicopter from the function.
[_location] call myTag_fnc_createHelicopter;
---------------------------------------------------------------------*/



{
	_index = ([1, count _helicopterClassNames] call BIS_fnc_randomNum) - 1;		
	_helicopterClassName = _helicopterClassNames select _index;
	_createdHelicopter =[_x, _helicopterClassName] call myTag_fnc_createHelicopterWithName;
	_createdHelicopter setDir 180;
} forEach _locations;

/* call spawn to create helicopter */
/* code works */
//_location = [8020.62,10067.8,0];
//_helicopterClassName = "B_CTRG_Heli_Transport_01_sand_F";
//_createdHelicopter =[_location, _helicopterClassName] call myTag_fnc_createHelicopterWithName;
/*  end of spawn function call to create helicopter */
//call myTag_fnc_myFunction;

call myTag_fnc_createBlackFish;
call rjj_fnc_testFunction;


// setup enemy chopper to load troops on the airfield and flyaway.
[] ExecVM "createEnemyDropOff.sqf";
