//[_side] spawn BMR_AC_fnc_spawnAIair;
params ["_side"];

BMR_AIvehCount = BMR_AIvehCount +1;

private _spawnOrientation = call BMR_AC_fnc_aiSpawnPos;
_spawnOrientation params ["_sPos","_sDir"];

private _pool = missionNameSpace getVariable ["BMR_AircraftPool", []];
private _sideVehPool = [];
private _type = "";

if (BMR_useVehSide isEqualTo 1 && {count _pool > 1} && {!(_pool isEqualTypeAll "")}) then {
	_sideVehPool = [_pool # 0, _pool # 1] select (_side isEqualTo WEST);
	_type = selectRandom _sideVehPool;
}
else
{
	_type = selectRandom _pool;
};

private _speed = [65,180] select (_type isKindOf "Plane");

private _vehicle = [_sPos,_sDir,_type,_side] call BIS_fnc_spawnVehicle;
_vehicle params ["_veh","","_vehgrp"];

private _vel = velocity _veh;
_veh setpos [(_sPos # 0) + (sin (_sDir -180)), (_sPos # 1) + (cos (_sDir -180)), _sPos # 2];
_veh setVelocity [(_vel # 0) + (sin _sDir * _speed), (_vel # 1) + (cos _sDir * _speed), _vel # 2];

_veh addeventhandler ["Killed", {BMR_AIvehCount = BMR_AIvehCount -1}];
_veh addEventHandler ["GetOut", {params ["","","_unit"]; deleteVehicle _unit}];
{_x addeventhandler ["Killed", {params ["_unit"]; deleteVehicle _unit}]} forEach (units _vehgrp);

[_veh,_type] call BMR_AC_fnc_customPylonLoadouts;
_veh spawn BMR_AC_fnc_aircraftMasochism;