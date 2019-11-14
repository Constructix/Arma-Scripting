// Create sniper Group
// start position for snipers : [6116.35,13141.4,0]
// config for snipers>>
// (configfile >> "CfgVehicles" >> "O_T_Sniper_F")

private ["_sniperGroup", "_westGroup", "_stalking"];
_westGroup = [[6451.41,12978.1,0], WEST,  ["B_recon_F",B_recon_LAT_F ]] call BIS_fnc_spawnGroup;
_sniperGroup = [[6115.96,13143.8,0], EAST,  ["O_T_Sniper_F"]] call BIS_fnc_spawnGroup;
_stalking = [_sniperGroup, _westGroup] spawn BIS_fnc_stalk;



