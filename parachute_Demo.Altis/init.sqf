private ["_listOfObjects"];
private ["_nearestBuildingToPlayer"];
private ["_availablePositions"];
private ["_westGroupAlpha"];
private ["_firstGroup"];
private ["_currentUnit"];
private ["_neareastObjects"];
private ["_firstBuilding"];

player enableFatigue false;
player enableStamina false;

ExecVM "LoadEastUnits.sqf";
// add item optic_Nightstalker
player addItem "optic_Nightstalker";
player assignItem "optic_Nightstalker";

_neareastObjects = nearestObjects[position recon1, ["Land_i_House_Big_01_V3_F","Land_i_House_Big_02_V2_F"], 50];
hint format ["Using nearestObjects Count: %1", count _neareastObjects];
Sleep(10);


for "_x" from 1 to count _neareastObjects do
{
	_firstBuilding = (_neareastObjects select _x);
	_availablePositions = [_firstBuilding] call BIS_fnc_buildingPositions;	
	_westGroupAlpha = createGroup west;
	_westGroupAlpha deleteGroupWhenEmpty true;
	for "_x" from 1 to count _availablePositions do
	{
		_currentUnit = _westGroupAlpha createUnit["B_soldier_M_F", position recon1, [],0.9, "NONE"]; // can be NONE, FORM, CAN_COLLIDE, CARGO, NONE
		_currentUnit setPosATL (_firstBuilding buildingPos _x);		
	};
};

// Using nearest buildings
_nearestBuildingToPlayer = nearestBuilding recon1;

hint format["Number of near objects are : %1", _nearestBuildingToPlayer];
Sleep(5);

_availablePositions = [_nearestBuildingToPlayer] call BIS_fnc_buildingPositions;
hint format["Number of Positions %1", count _availablePositions];


_firstGroup = createGroup west;

// Loop through building positions and add person

for "_x" from 1 to  count _availablePositions  do 
{
	_currentUnit = _firstGroup createUnit["B_soldier_M_F", position recon1, [],0.9, "NONE"]; // can be NONE, FORM, CAN_COLLIDE, CARGO, NONE
	_currentUnit setPosATL (_nearestBuildingToPlayer buildingPos _x);
	_currentUnit disableAI "MOVE";
	hint format["Unit Name : %1", _currentUnit];
	
	Sleep(1);
};
// load East units
