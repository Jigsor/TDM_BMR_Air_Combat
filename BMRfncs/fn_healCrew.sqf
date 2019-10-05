params [["_veh",objNull]];
if (isNull _veh) exitWith {};
{
	_x setdamage 0;
} forEach crew _veh;
_veh vehicleChat "Health 100%";