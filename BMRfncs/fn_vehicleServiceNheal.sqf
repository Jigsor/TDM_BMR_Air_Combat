if (!canSuspend) exitWith {
	0 spawn BMR_AC_fnc_vehicleServiceNheal;
};

private "_l";
while {true} do {
	sleep 0.2;
	_pos = [getPosATLVisual serviceHoop, getPosASLVisual serviceHoop] select surfaceIsWater getPosWorld serviceHoop;
	_l = [objectParent player] inAreaArray [_pos, 15, 15, 90, false, 15];
	if !(_l isEqualTo []) then {
		_xhandle = (_l # 0) spawn BMR_AC_fnc_x_reload;
		sleep 10;
	};
};