Fock_VehEject = {
	hint "Ejector Seat Script running";
	_ejectPlayer	= _this select 0;
	_vehEject 		= _this select 1;
	_driver			= assignedDriver _vehEject;
	while {_ejectPlayer == _driver} do
	{
		waituntil { speed _vehEject > 40};
			if(speed _vehEject > 40) exitwith
			{
				_ejectPlayer action["eject", _vehEject];
				hint "You have been ejected.";
			};
	};
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// sets off car bomb that has currently been passed into this function.
Fock_CarBomb = {
	hint "Car Bomb Script Running";
	_ejectPlayer	= _this select 0;
	_vehEject 		= _this select 1;
	_driver			= assignedDriver _vehEject;
	
	while {(_ejectPlayer == _driver) && (alive _ejectPlayer)} do
	{	
		waituntil { speed _vehEject > 40};
		if(speed _vehEject > 40) exitwith
		{
			"M_Mo_82mm_AT" createvehicle getpos _vehEject;				
			hint "Warning Car Bomb has detonated!";	
		};
		hint "This should not be seen";
		sleep 2;		
		
	};	
	
};