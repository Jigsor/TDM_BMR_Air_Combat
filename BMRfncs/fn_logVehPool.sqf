// Log vehicle pool //
private _vehPool = missionNameSpace getVariable ["BMR_AircraftPool", []];
diag_log "**** TDM BMR Air Combat Vehicle Pool:";
for "_i" from 0 to (count _vehPool -1) step 1 do {
	diag_log format ["%1", (_vehPool select _i)];
};