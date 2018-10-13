private ["_nearestBuilding"];
_nearestBuilding  = nearestBuilding player;

hint format ["Building %1", _nearestBuilding];
engineer move (_nearestBuilding buildingPos 1);