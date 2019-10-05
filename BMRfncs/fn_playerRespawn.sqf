params ["_unit","_corpse"];

deleteVehicle _corpse;

private _type = selectRandom (missionNameSpace getVariable "BMR_AircraftPool");
if !(isClass(configFile >> "CfgVehicles" >> _type)) exitWith {0 spawn BMR_AC_fnc_missingMods};

private _centPos = getPosASL task1;
private _height = if (_type isKindOf "Plane") then {selectRandom [400,500,600,700,800]} else {selectRandom [100,200,300,400,500]};
private _speed = if (_type isKindOf "Plane") then {
	private _landingSpeed = getNumber (configFile >> "CfgVehicles" >> _type >> "landingSpeed");
	(round(_landingSpeed / 2)) + _landingSpeed
} else {65};
private _randPos = _centPos getPos [1000 * sqrt (1 - abs random [-1, 0, 1]), random 360];
private _veh = createVehicle [_type, _randPos, [], _height, "FLY"];
private _spawnDir = _veh getDir task1;

_veh setdir _spawnDir;
_veh setpos [(_randPos # 0) + (sin (_spawnDir -180)), (_randPos # 1) + (cos (_spawnDir -180)), _height];
_veh setVelocityModelSpace [0, _speed, 0];

createVehicleCrew _veh;
private _driver = driver _veh;

_unit setUnitLoadout (typeOf _driver);
_unit linkItem "ItemGPS";

//deleteVehicle _driver; //RHS fixed wing will auto eject when deleting driver..wtf?
//_veh deleteVehicleCrew driver _veh;
_driver setDamage 1;

_grp = createGroup (missionNameSpace getVariable ["BMR_playerSide", side _unit]);
{[_x] joinSilent _grp;} forEach (crew _veh);
_grp setVariable ["BMR_grpSkip",true];
_grp setCombatMode "RED";

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

if !(isLightOn objectParent _unit) then {objectParent _unit setPilotLight true};
if !(isCollisionLightOn objectParent _unit) then {_unit action ["CollisionLightOn", objectParent _unit]};
if ((["BMR_autoFlare", 1] call BIS_fnc_getParamValue) isEqualTo 1) then {
	_veh addAction [("<t color='#ff9900'>") + "Auto Countermeasure", {call BMR_AC_fnc_autoCountermeasure}, [], 7.9, false, false, '', '_target == (vehicle _this)'];
};

showChat true;
[_veh,_type] call BMR_AC_fnc_customPylonLoadouts;
0 spawn BMR_AC_fnc_uiPref;

// usefull for debugging
//private _displayName = getText(configfile >> "CfgVehicles" >> _type >> "displayName"); diag_log format ["**** Current Vehicle Display Name: %1 Current Vehicle Class Name %2", _displayName, _type];