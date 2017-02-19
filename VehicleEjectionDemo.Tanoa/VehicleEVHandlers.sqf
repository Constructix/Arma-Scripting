_vehicle = _this select 0;
_vehicle addEventHandler ["GetIn", "if (player == (_this select 2)) then {[_this select 2, _this select 0] spawn Fock_CarBomb; hint format ['%1 entered Vehicle', name player];}"];
//_vehicle addEventHandler ["GetOut", "if (player == (_this select 2)) then {hint 'Player Left Vehicle';}"];