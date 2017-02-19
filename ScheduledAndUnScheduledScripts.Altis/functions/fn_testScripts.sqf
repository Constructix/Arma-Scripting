/*
* File: fn_testScripts.sqf
* Description: 
*             test Functions
*
* Parameters
*            0 - player(object)
*/
private ["_position", "_cube", "_step", "_yPosition", "_xPosition", "_zPosition"];
params["_unit"];

_position = getPos _unit;
_step = 0;

for "_i"  from 0 to 10000 do
{
    _cube = "Land_VR_Shape_01_Cube_1m_f" createVehicle _position;
    _cube enableSimulation false;
    _xPosition =  _position select 0;
    _yPosition  = _position select 1;
    _zPosition = _position select 2;
    _cube setPosASL [  
                    _xPosition,
                    _yPosition + _i,
                    _zPosition + _step
                    ];
    _step = _step + 0.25;
};

