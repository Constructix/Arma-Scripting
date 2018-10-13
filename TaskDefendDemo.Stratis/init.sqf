execVM "defendBuilding.sqf";
player enableFatigue false;
player enableStamina true;
ammoBox AddAction["Open",{ ["Open",true ] spawn BIS_fnc_arsenal;}];