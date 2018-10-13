// Create chopper

private ["_position", "_chopper", "_currentGroup", "_currentUnit"];
private ["_xPos"];
private ["_eastUnits"];
private ["_landPosition"];
private ["_chopperPilot"];
private ["_chopperGroup"];


_startPosition = [14676.7,16681,0];
_landPosition = [12875,16739.9,0];

_chopperGroup = createGroup[east, true];


_eastUnits = ["O_soldier_M_F","O_Soldier_LAT_F" ];
_chopper = "O_Heli_Transport_04_covered_F" createVehicle _startPosition;
[_chopper] join _chopperGroup;


// create group
_currentGroup =  createGroup[east, true];


_startPosition = position _chopper;

 _chopperPilot = _currentGroup createUnit["O_helipilot_F", _startPosition, [],0,"FORM"];
 _chopperPilot moveInDriver _chopper;

{
	
 	_currentUnit = _currentGroup createUnit[ _x,_startPosition, [], 0, "FORM"];
	_currentUnit MoveInCargo _chopper;	
 	
}forEach _eastUnits;