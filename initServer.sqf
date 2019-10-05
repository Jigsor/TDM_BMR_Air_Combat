addMissionEventHandler ["HandleDisconnect", {params ["_unit"]; deleteVehicle _unit}];

["Initialize", [true]] call BIS_fnc_dynamicGroups;

waitUntil {time > 1};

diag_log "BMR Air Combat v0.991";

call BMR_AC_fnc_logMissionParameters;
call BMR_AC_fnc_logVehPool;

if (surfaceIsWater (getPosASL task1)) then {
	diag_log "*** BMR Air Combat task1 objective module placed over water";
};

0 spawn BMR_AC_fnc_serverMainThread;