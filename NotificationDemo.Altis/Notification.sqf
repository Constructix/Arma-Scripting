sleep 10;
["TaskAssigned",["", "Disable the nuke"]] call BIS_fnc_showNotification;


{
	if(side _x == "east") then
	{
		_x addEventHandler ["Killed", { execVM "EnemiesRemaining.sqf"}]
	};	
} foreach allUnits;