// Arma 3 Scripting Tutorial for beginners


_myHint         = "Hello";
_myHint2        = "World";
_myMint1        = "Richard";
_myMint2        = " is Back!";

_myArray        = [_myHint, _myhint2];
_myArray2       = [_mymint1, _myMint2];

_multiArray     = [_myArray, _myArray2]; // create a mult dimensional arrary

_myKills        = 1;
_killMessage    = "You have killed: " + str(_myKills);  // convert to string.

hint (_multiArray select 0 select 0); // display the first item in the first index of the mult dimensional array.
sleep 1;
hint (_multiArray select 1 select 0); // display second item in arrary
sleep 1;
//convert to a string.
hint _killMessage;

