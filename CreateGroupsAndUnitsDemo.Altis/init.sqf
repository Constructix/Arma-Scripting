private ["_markerPosition"];

private ["_firstGroup"];
private ["_firstEastGroup"];
private ["_waypoints"];
private ["_targetWayPoint"];

player addBackpack "G_AssaultPack";
player addItemToBackpack "optic_Nightstalker";
player addVest "V_PlateCarrierIA2_dgtl";
//removeAllWeapons player;
player addWeapon "srifle_EBR_MRCO_pointer_F";
player addMagazines ["20Rnd_762x51_Mag", 20];

_markerPosition = markerPos "marker_0";
[_markerPosition] execVM "createGroups.sqf";
[] execVM "LoadAmmoBox.sqf";


_firstGroup = createGroup[west, true];
[paramedic,soldierOne] join _firstGroup;
soldierOne setDamage .95;
removeAllItems soldierOne;

paramedic enableAI "MOVE";
paramedic setUnitPos "middle";
soldierOne action["Heal", paramedic];


Sleep(20);
// go an create a waypoint 
_waypoints = _firstGroup addWaypoint[markerPos "marker_0", 150, 1 ];
[_firstGroup,1] setWaypointType "MOVE";
[_firstGroup,1] setWaypointFormation "COLUMN";

_waypoints = _firstGroup addWaypoint[markerPos "marker_0", 150, 2 ];
[_firstGroup,2] setWaypointType "MOVE";
[_firstGroup,2] setWaypointFormation "COLUMN";


// following code works.
// loads transport of east units 
// create east units.
_markerPosition = getMarkerPos "marker_2";
//_firstEastGroup = [east] ExecVM "CreateGroup.sqf";
_firstGroup = [_markerPosition, east, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Motorized_MTP" >> "OIA_MotInf_Reinforce")] call BIS_fnc_spawnGroup;
{
	
} foreach group units;

_targetWayPoint =getMarkerPos "taskDefend";
[_firstGroup, _targetWayPoint] call BIS_fnc_taskDefend;



