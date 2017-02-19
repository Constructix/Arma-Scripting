// _westSoldierTypes  = [	"B_Story_SF_Captain_F",
						// "B_Story_Protagonist_F",
						// "B_Soldier_F",
						// "B_Soldier_TL_F",
						// "B_recon_exp_F",
						// "B_recon_M_F",
						// "B_Soldier_SL_F",
						// "B_sniper_F",
						// "B_medic_F",
						// "B_soldier_repair_F"];

// _airportMarkerPos = getMarkerPos "airport_marker";
// _xPos = 0;
_position  = [[[getMarkerPos "airport_marker", random (50)]],["water","out"]] call BIS_fnc_randomPos;
// hint format["Position %1 %2", _position select 0, _position select 1];
// _p = _position select 0;
// _y = 0;
// _xPos = _p + 10;
// {
	// _xPos = _xPos + 10;	
	// _y = _position select 1;
	
	// _newPosition = [_xPos, _position select 1];
	// _soldier = _x createUnit[_newPosition,WestGroup];	
// }
// forEach _westSoldierTypes;
// //_position  = [[[getMarkerPos "airport_marker", random 600 + 300]],["water","out"]] call BIS_fnc_addRespawnPosition;
_newGroup = [_position, west, 5] call BIS_fnc_spawnGroup; 
_taskPatrolHandle  = [_newGroup, _position, 10] call bis_fnc_taskPatrol;