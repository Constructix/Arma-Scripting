// Aircraft Flyby
private ["_choppers", "_aircraft"];
_choppers =["B_CTRG_Heli_Transport_01_sand_F"];
_aircraft =["B_T_VTOL_01_infantry_F"];


{hint "Loading Aircraft";} spawn BIS_fnc_spawn;

for "_x" from 1 to 10 do 
{
	[[19264.197,2354,-185.97],[22538,17025,12.9168],150,"NORMAL",_aircraft select 0,WEST] call BIS_fnc_ambientFlyby; 
	Sleep(2);
};

hint "About to load choppers";
Sleep(3);
for "_x" from 1 to 10 do 
{
	[[19264.197,2354,-185.97],[22538,17025,12.9168],50,"FULL",_choppers select 0,WEST] call BIS_fnc_ambientFlyby; 
	Sleep(5);
};
