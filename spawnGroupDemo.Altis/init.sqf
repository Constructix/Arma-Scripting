// spawn group

private ["_markerPos"];
private ["_sniperGroup"];
_markerPos = getMarkerPos "marker_0";
hint format ["Marker Pos %1", _markerPos select 0];
_sniperGroup = [_markerPos , WEST, ["B_recon_exp_F","B_recon_exp_F", "B_recon_JTAC_F","B_Recon_Sharpshooter_F"]] call BIS_fnc_spawnGroup;
_sniperGroup deleteGroupwhenEmpty true;
[_sniperGroup , getPos player, 300] call bis_fnc_taskPatrol;