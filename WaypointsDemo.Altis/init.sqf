
player enableFatigue false;
player enableAimPrecision false;
player allowSprint true;

["marker_0"] ExecVM "CreateEnemies.sqf";
for[{_i=0},{_i < 3},{_i = _i + 1}] do {
	["marker_0"] ExecVM "CreateEastSnipers.sqf";
};
[] ExecVM "CreateAOVechicles.sqf";    