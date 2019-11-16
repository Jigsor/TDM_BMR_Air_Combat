if (!canSuspend) exitWith {
	0 spawn BMR_AC_fnc_vehicleServiceNheal;
};

private "_l";
private _h = serviceHoop;
while {true} do {
	sleep 0.2;
	_pos = [getPosATLVisual _h, getPosASLVisual _h] select surfaceIsWater getPosWorld _h;
	_l = [objectParent player] inAreaArray [_pos, 15, 15, 90, false, 15];
	if !(_l isEqualTo []) then {
		_xhandle = (_l # 0) spawn BMR_AC_fnc_x_reload;
		sleep 10;
	};
};