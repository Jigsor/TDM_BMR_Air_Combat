if (!hasInterface) exitWith {};
private _sideID = getNumber (configFile >> "cfgVehicles" >> typeOf player >> "side");
private _side = _sideID call BIS_fnc_sideType;
if !(_side in [WEST,EAST]) then {
	diag_log format ["**** Warning! playable unit type %1 not supported. Player type must be of EAST or West!", _side];
	endMission "END2";
};
missionNameSpace setVariable ["BMR_registeredSide", _side];