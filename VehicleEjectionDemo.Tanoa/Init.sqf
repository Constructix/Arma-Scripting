private ["_HMGEventHandlersScript"];
_HMGEventHandlersScript = "SetupHMGEventHandlers.sqf";

ExecVM _HMGEventHandlersScript;
ExecVM "Functions\Functions.sqf";
hint format["%1", Name];