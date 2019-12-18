addMissionEventHandler ["HandleDisconnect", {params ["_unit"]; deleteVehicle _unit}];

["Initialize", [true]] call BIS_fnc_dynamicGroups;

waitUntil {time > 1};

diag_log "BMR Air Combat v0.997";

call BMR_AC_fnc_logMissionParameters;
call BMR_AC_fnc_logVehPool;

if (BMR_battleAtSea isEqualTo 1) then {
	call BMR_AC_fnc_seaBattle;
};

if (surfaceIsWater (getPosASL task1)) then {
	diag_log "*** BMR Air Combat task1 objective module placed over water";
};

0 spawn BMR_AC_fnc_serverMainThread;
if !(BMR_flack isEqualTo 0) then {0 spawn BMR_AC_fnc_flak};