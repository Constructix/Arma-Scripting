params["_buildings"];

_patrolGroup = ["O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_medic_F",
				"O_G_engineer_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_A_F"];
_group = createGroup [east, true];

{
	_unit = _group createUnit[_x,_buildings select 0, [], 0, "FORM"];	
} forEach _patrolGroup;
[_group, position cargo, 50] call BIS_fnc_TaskPatrol;