{
	// Current result is saved in variable _x
	if( side _x == east ) then {
		// enableAI;
		_x enableAI "MOVE";
		_x enableAI "ANIM";
		_x enableAI "AUTOCOMBAT";		
	}
} forEach allUnits;
