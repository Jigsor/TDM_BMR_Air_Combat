// call BMR_AC_fnc_vehiclePool;
if (!isServer) exitWith {};
if (BMR_poolTypes > 1) exitWith {call BMR_AC_fnc_vehWhiteList};

_helicopters = [];
_planes = [];
_blackList = call BMR_AC_fnc_vehBlackList;
_allVehicleClasses = (configFile >> "CfgVehicles") call BIS_fnc_getCfgSubClasses;

{
	_className = _x;
	if !(_className in _blackList) then {
		_cfg = configfile >> "CfgVehicles" >> _className;
		_displayName = getText(_cfg >> "displayName");
		_scope = getNumber(_cfg >> "scope");
		_autonomous = getNumber(_cfg >> "isUav");
		if ((_scope >= 2) && {_displayName != ""} && {!(_autonomous isEqualTo 1)}) then {
			switch(true) do {
				case (_className isKindOf "Helicopter") : {
					_weps = [_className] call BMR_AC_fnc_leathalWeapons;
					if !(_weps isEqualTo []) then {
						_helicopters pushBack _className;
					};
				};
				case (_className isKindOf "Plane") : {
					_weps = [_className] call BMR_AC_fnc_leathalWeapons;
					if !(_weps isEqualTo []) then {
						_planes pushBack _className;
					};
				};
				default {};
			};
		};
	};
} forEach (_allVehicleClasses);

_pool = [_helicopters, _planes] select BMR_poolTypes;

if (BMR_useVehSide isEqualTo 1 && {count _pool > 1}) then {
	_pool = [_pool] call BMR_AC_fnc_sortVicsBySide;
};

missionNameSpace setVariable ["BMR_AircraftPool", _pool, true];