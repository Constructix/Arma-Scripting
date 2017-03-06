/* ****************************************************************************************************
*   Name			  :	fn_SetGroupDirection.sqf*    
*	  Purpose		  : Sets the direction and behaviour of the unit that is passed into this function.
*   Created     : 2016-0-06
*   Parameters 	: _unitGroup 	-  (group)	Unit to set the direction to
*				  	      _behaviour   - 	(string) sets the behaviour of the group.
*   Returns			Nothing; 
*******************************************************************************************************/

params ["_unitGroup", "_behaviour"];
private ["_groupLeader"];
_groupLeader = leader _unitGroup;
_groupLeader setDir  random(360);
_unitGroup setBehaviour _behaviour;
