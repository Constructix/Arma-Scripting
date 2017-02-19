waitUntil {time > 0};
execVM "EtV.sqf";
waitUntil {!isNil "EtVInitialized"};
[player] call EtV_Actions;