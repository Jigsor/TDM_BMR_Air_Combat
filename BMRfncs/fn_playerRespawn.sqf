params ["_unit","_corpse"];

deleteVehicle _corpse;

private _pool = missionNameSpace getVariable ["BMR_AircraftPool", []];
private _side = missionNameSpace getVariable ["BMR_registeredSide", side player];
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

if !(isClass(configFile >> "CfgVehicles" >> _type)) exitWith {0 spawn BMR_AC_fnc_missingMods};

private _isPlane = _type isKindOf "Plane";
private _height = if (_isPlane) then {selectRandom [400,500,600,700,800]} else {selectRandom [100,200,300,400,500]};
private _landingSpeed = 1;
private _speed = 65;
if (_isPlane) then {
	_landingSpeed = getNumber (configFile >> "CfgVehicles" >> _type >> "landingSpeed");
	_speed = ((round(_landingSpeed / 2)) + _landingSpeed) max 150;
};

private _randPos = (getPosASL task1) getPos [1000 * sqrt (1 - abs random [-1, 0, 1]), random 360];
private _veh = createVehicle [_type, _randPos, [], _height, "FLY"];
private _spawnDir = _veh getDir task1;

_veh setdir _spawnDir;
_veh setpos [(_randPos # 0) + (sin (_spawnDir -180)), (_randPos # 1) + (cos (_spawnDir -180)), _height];
_veh setVectorUp [0,0,1];
_veh setVelocityModelSpace [0, (_speed/3.6), 0];

private _origGrp = createVehicleCrew _veh;
_origGrp deleteGroupWhenEmpty true;
private _driver = driver _veh;
private _driverType = typeOf _driver;

if ((count units _origGrp) > 1) then {
	_grp = createGroup _side;
	{[_x] joinSilent _grp;} forEach (crew _veh);
	[_grp] remoteExec ["BMR_AC_fnc_slaveGroup", 2];
	missionNameSpace setVariable ["BMR_crewGrp", _grp];
	_grp setCombatMode "RED";
};

//_veh deleteVehicleCrew driver _veh;//RHS fixed wing will auto eject when deleting driver..wtf?
_driver setDamage 1;

_unit setUnitLoadout _driverType;
_unit linkItem "ItemGPS";
_unit moveInDriver _veh;

_veh addEventHandler ["GetOut", {
	params ["_veh","","_unit"];
	if (!isPlayer _unit) then {deleteVehicle _unit};
	if (isPlayer _unit && {isTouchingGround _veh}) then {
		{_veh deleteVehicleCrew _x} forEach crew _veh;
		deleteVehicle _veh;
	};
}];

if (!isNull _driver) then {deleteVehicle _driver};

private _vehObj = objectParent _unit;
if !(isLightOn _vehObj) then {_vehObj setPilotLight true};
if !(isCollisionLightOn _vehObj) then {_unit action ["CollisionLightOn", _vehObj]};
if (_type in BMR_ManualFire) then {
	if !(isManualFire _vehObj) then {_unit action ["ManualFire", _vehObj]};
};

if (BMR_autoFlare isEqualTo 1) then {
	_veh addAction [("<t color='#ff9900'>") + (localize 'STR_BMR_AutoCountermeasure') + "</t>", {call BMR_AC_fnc_autoCountermeasure}, [], 7.9, false, false, '', '_target == (vehicle _this)'];
};

showChat true;
[_veh,_type] call BMR_AC_fnc_customPylonLoadouts;
0 spawn BMR_AC_fnc_uiPref;

// usefull for debugging
//private _displayName = getText(configfile >> "CfgVehicles" >> _type >> "displayName"); diag_log format ["**** Current Vehicle Display Name: %1 Current Vehicle Class Name %2", _displayName, _type];