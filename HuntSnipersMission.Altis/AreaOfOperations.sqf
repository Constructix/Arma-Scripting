if(isNil "AreaOfOperations") then
{
	AreaOfOperations = [];
};

AreaOfOperations = ["Terminal", "Stadium","Kavala","Panochori","Negades","Kore","Oreokastro","Skopos"];

if(isNil "CurrentAO") then
{
	CurrentAO =AreaOfOperations call BIS_fnc_selectRandom;	
	["Area of Operation is %1", CurrentAO] call BIS_fnc_logFormat;
	
};
//FNC_sayhello = {hint format ["hello %1", player]};
//call FNC_sayhello
	
fnc_displaynotice = {
	_city = format["%1",CurrentAO];
	_title = "<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>Kill Snipers</t><br/>Make your way to "+ _city;
	_remainder = " there are snipers in the area, You need to be take them out.<br/>Good Luck!</br>";
	_result = _title + _remainder;	
	_result
	
};
hint parseText call fnc_displaynotice;


