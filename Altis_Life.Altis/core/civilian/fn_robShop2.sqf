/*
	Sending robbery-request to server 
*/
private["_shop","_robber"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;


/*if(_shop == casino_1) then
{
if(playersNumber west < 4) exitWith { hint "Die Kasse ist leer..."};//This line has been commented out, but can be set so that you can limit the ability to robb based on cops online.
if(isNull _shop OR isNull _robber) exitWith {};
if(side _robber != civilian) exitWith { hint "Du kannst das Kasino nicht überfallen!" };// We do not want anyone but civilianz to rob the stations.
if (vehicle player != _robber) exitWith { hint "Raus aus dem Fahrzeug" };
if (currentWeapon _robber == "") exitWith { hint "Besorg dir erstmal eine Waffe!" };//is he trying to rob without a weapon? Lets taunt him a bit!
if(_robber distance _shop > 3) exitWith { hint "Du musst näher heran" };
[[_shop,_robber,_action],"TON_fnc_robShop",false,false] spawn life_fnc_MP;//now we send the info to the server to be processed further there.
}
else
{*/
if(playersNumber WEST < 2) exitWith { hint "The cashregistry is empty, try again later!"};//This line has been commented out, but can be set so that you can limit the ability to robb based on cops online.
if(isNull _shop OR isNull _robber) exitWith {};
if(side _robber != civilian) exitWith { hint "Du kannst die Tankstelle nicht überfallen." };// We do not want anyone but civilianz to rob the stations.
if (vehicle player != _robber) exitWith { hint "Raus aus dem Fahrzeug" };
if (currentWeapon _robber == "") exitWith { hint "Besorg dir erstmal eine Waffe!" };//is he trying to rob without a weapon? Lets taunt him a bit!
if(_robber distance _shop > 3) exitWith { hint "Du musst näher heran" };
[[_shop,_robber,_action],"TON_fnc_robShop",false,false] spawn life_fnc_MP;//now we send the info to the server to be processed further there.

//};