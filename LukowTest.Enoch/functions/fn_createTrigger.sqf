/*******************************************************************************************************************
* Function 	: createTrigger
* Purpose	: Creates a trigger based on the marker that has been passed into this function.
* Date      : 2019110     
* Author    : YogiBear
*******************************************************************************************************************/

private ["_markerName"];
private ["_availableMarkers"]; 
private ["_markerPosition","_trigger"];
private ["_loadWithEnemiesAsString"];
_markerName = player getVariable "markerName";

_markerPosition = markerPos _markerName;
diag_log format["[RJC] - [CreateTrigger] -Creating trigger for  %1",_markerName];
_trigger =  createTrigger["EmptyDetector",[_markerPosition select 0, _markerPosition select 1, _markerPosition select 2], true ];
_trigger setTriggerActivation["WEST", "PRESENT",true];
_trigger setTriggerArea[200,200,0, false];
_trigger setTriggerStatements["this","call RJC_fnc_loadTownWithEnemies;","call RJC_fnc_deSpawnEnemies;"];
diag_log format["[RJC] - [CreateTrigger] - End of fnc_CreateTrigger."];