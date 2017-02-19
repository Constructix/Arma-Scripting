// Create enemy Group
_eastGroup = createGroup east;
_enemySoldierTypes = [	"B_Story_SF_Captain_F",
						"O_soldierU_AAT_F", 
						"O_soldierU_AR_F", 
						"O_support_AMort_F",
						"O_support_GMG_F",
						"O_recon_medic_F"];
_eastAirportMarkerPos = getMarkerPos "enemy_marker";
// add enemies
_distance =[10,50,200]; 
_radius  =  _distance select floor random count _distance;
_position  = [[[_eastAirportMarkerPos, _radius]],["water","out"]] call BIS_fnc_randomPos;

[_position, EAST,5] call BIS_fnc_spawnGroup;


// _p = _position select 0;
// _Y =0;
// _xPos = _p + 10;
// {	
	// _xPos = _xPos + 10;	
	// _newPosition = [_xPos, _position select 1];
	// _soldier = _x createUnit[_newPosition,_eastGroup];
// }
// forEach _enemySoldierTypes;
// [_eastGroup, _eastAirportMarkerPos,20] call bis_fnc_taskPatrol;