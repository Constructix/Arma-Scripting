/************************************************************************************************************
* Function 	: init.sqf
* Purpose	: Entry point into the mission. At this stage getting the marker from the town in Luko.
*             It is assumed, that a marker has been placed onto the map. This marker drives the triggers when 
*             the admin is at the moment 200 metres away. A squad is spawned in and is moved to the availble 
*             Buildings in a 50 metre radius.
*             It is planned that these values will be configurable, however, need testing from the SOG to 
*             comfirm all is working and code can be modified to accomodate this.
*             NOTE: There is a fair bit of logging going on, it is invisaged that this logging will be removed,
*                   once testing has been done to check off all is working as expected.

* Date      : 20191110
* Author    : YogiBear
**************************************************************************************************************/
private ["_admin"]
private ["_marker"];
private ["_playerName"];
/*
* Replace here with Admin name
*/
_admin = "Richard"; // Change to your name for the triggers to be actioned.

_marker = "lukowMarker";

_playerName = call BIS_fnc_playerName;

if(_playerName == _admin) then {	
	player setVariable["spawnGroup", "", true];
	player setVariable["markerName", _marker, true];
	call RJC_fnc_createTrigger;
};