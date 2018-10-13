publicVariable "notifyAI";
if(isNil "notifyAI") then {
	notifyAI = true;
};

private _createBaseHandle =[] spawn { [["Land_Cargo_HQ_V1_F","Land_Cargo_House_V1_F", "Land_Cargo_Patrol_V1_F"]] ExecVM "CreateBase.sqf";};
private _createTaskHandle =[] spawn {[] ExecVM "Tasks\CreateTask.sqf";};
private _createPlayerHandle =[] spawn {[] ExecVM "SetupPlayer.sqf";};
