{
	if(side _x == east) then
	{
		_x addEventHandler ["Killed", { execVM "EnemiesRemaining.sqf"}]
	};	
} foreach allUnits;