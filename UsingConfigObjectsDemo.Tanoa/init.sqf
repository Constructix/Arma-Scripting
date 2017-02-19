// this code below to go in a init.sqf or another file with a suffix .sqf
// to get the value
_welcomeMessage  = getText(missionConfigFile >> "myMissionConfig" >> "mySetup" >> "welcomeMessage");
hint format["%1", _welcomeMessage];