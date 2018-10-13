 private ["_units", "_chopperGroup"];
// _chopperGroup = group recon_Group;
// {_x assignAsCargo chopper} foreach units recon_Group; 
//  {_x orderGetIn true} foreach _chopperGroup;
 { hint format ["%1",_x]; sleep 2; } foreach units recon_Group; 
 {_x assignAsCargo chopper} foreach units recon_Group; 

units recon_Group orderGetIn true;

