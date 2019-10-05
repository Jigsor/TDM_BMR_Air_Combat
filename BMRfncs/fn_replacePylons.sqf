params [["_veh",objNull],["_pylons",[]]];
if (isNull _veh) exitWith {};
private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _veh >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
private _nonPylonWeapons = [];
{ _nonPylonWeapons append getArray (_x >> "weapons") } forEach ([_veh, configNull] call BIS_fnc_getTurrets);
{ _veh removeWeaponGlobal _x } forEach ((weapons _veh) - _nonPylonWeapons);
{ _veh setPylonLoadOut [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;
