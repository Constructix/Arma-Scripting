fnc_displaynotice = {
	_city = format["%1",CurrentAO];
	_title = "<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>Kill Snipers</t><br/>Make your way to "+ _city;
	_remainder = " there are snipers in the area, You need to be take them out.<br/>Good Luck!</br>";
	_result = _title + _remainder;	
	hint parseText format["%1",_result];
};