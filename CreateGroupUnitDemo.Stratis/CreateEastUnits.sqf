private ["_spawnLocation","_westPatrolGroup","_unit","_basePosition"];

// position selections

_spawnLocation = [2022.67,5180.58,0];
_basePosition = [1894.23,5726.82,0];
// create group
_westPatrolGroup = createGroup [east,true];

for [{_i=0}, {_i < 10}, {_i = _i + 1}] do {
	// create unit
	_unit = _westPatrolGroup createUnit ["O_HeavyGunner_F", _spawnLocation,[],0,"FORM"];
	// add backpack
	_unit addBackpack "B_Carryall_mcamo";
	_unit addMagazines ["150Rnd_93x64_Mag", 20];
};
[_westPatrolGroup, _basePosition , 100] call bis_fnc_taskPatrol;