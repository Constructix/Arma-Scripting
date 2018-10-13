private ["_spawnLocation","_westPatrolGroup","_unit", "_medicPosition", 
		"_buildingAreaLocation", "_building", "_buildingPositions", "_totalPositions"];

// position selections

_spawnLocation = [1864.55,5766.93,0];
_medicPosition = [1841.61,5638.99,0];
_buildingAreaLocation = [1839.35,5631.26,0]; // copied from editor.
// create group
_westPatrolGroup = createGroup [west,true];

for [{_i=0}, {_i < 10}, {_i = _i + 1}] do {
	// create unit
	_unit = _westPatrolGroup createUnit ["B_SharpShooter_F", _spawnLocation,[],0,"FORM"];
	// add backpack
	_unit addBackpack "B_Carryall_mcamo";

	_unit addMagazines ["20Rnd_762x51_Mag", 20];
};

for [{_i=0}, {_i < 3}, {_i = _i + 1}] do {
	// create unit
	_unit = _westPatrolGroup createUnit ["B_SharpShooter_F", _medicPosition,[],0,"FORM"];
	// add backpack
	
};

// get position 
_building = nearestBuilding _buildingAreaLocation;
_buildingPositions = _building buildingPos -1;
_totalPositions = count _buildingPositions;
hint format["Nearest Building %1 Positions: %2", _building, _totalPositions ];
_westPatrolGroup = createGroup [west,true];
for [{_i=0}, {_i < _totalPositions}, {_i = _i + 1}] do {
	// create unit
	_unit = _westPatrolGroup createUnit ["B_SharpShooter_F", _medicPosition,[],0,"FORM"];
	// add backpack
	_unit addBackpack "B_Carryall_mcamo";
	_unit addMagazines ["20Rnd_762x51_Mag", 20];

	_unit setPosATL (_building buildingPos _i);	
};
sleep 5;
/* Nearest objects */
_building =  nearestObjects [_buildingAreaLocation, ["Land_TentHangar_V1_F"],200];

_totalPositions = count _buildingPositions;
hint format["Nearest Hanger %1 Positions: %2", _building, _totalPositions ];












