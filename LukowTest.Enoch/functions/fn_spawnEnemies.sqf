params ["_markerName"];
private ["_spawnedGroup"];
private ["_markerPosition"];
private ["_enemyConfigGroups"];
private ["_selectedEnemyGroup"];
_markerPosition = getMarkerPos _markerName;

_enemyConfigGroups = [];
_selectedEnemyGroup = "";

_enemyconfigGroups append[(configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_reconPatrol")];
_enemyconfigGroups append[(configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_reconTeam")];
_enemyConfigGroups append[(configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")];

_selectedEnemyGroup  = _enemyconfigGroups call BIS_fnc_selectRandom;
_spawnedGroup  = [[_markerPosition select 0, _markerPosition select 1, _markerPosition select 2], EAST, _selectedEnemyGroup] call BIS_fnc_spawnGroup;
diag_log format["Selected Group : %1", _selectedEnemyGroup];
_spawnedGroup;