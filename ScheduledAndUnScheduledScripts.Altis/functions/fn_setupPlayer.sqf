params["_unit"];
private ["_fatigueValue"];

_unit enableFatigue false;
_unit enableAimPrecision false;
_unit allowSprint true;
_fatigueValue = getFatigue _unit;

hint format["Value of Fatigue: %1", _fatigueValue];

// _groupName setFormDir random(260); 
