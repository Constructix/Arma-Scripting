
execVM "SetupPlayer.sqf";
execVM "PlaceTower.sqf";
["TaskAssigned",["A new power-up is available!",5]] call BIS_fnc_showNotification;
execVM "TestRandom.sqf";