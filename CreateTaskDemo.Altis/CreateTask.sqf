waituntil {!isnil "bis_fnc_init"};

MAG_tskObj0=player createSimpleTask ["kill officer"];
MAG_tskObj0 setSimpleTaskDescription ["Kill the officer at all costs to let the mission end","kill officer","kill officer"];
player setCurrentTask MAG_tskObj0;
hint "Task Successfully created";