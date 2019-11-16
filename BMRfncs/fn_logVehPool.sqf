// Log vehicle pool //
private _vehPool = missionNameSpace getVariable ["BMR_AircraftPool", []];

if ((_vehPool # 0) isEqualType []) then {
	_vehPool params ["_westPool","_eastPool","_indiPool"];
	private _logEmpty = {diag_log "Empty Pool"};

	diag_log "**** TDM BMR Air Combat West Vehicle Pool:";
	if (_westPool isEqualTo []) then {call _logEmpty};
	for "_i" from 0 to (count _westPool -1) step 1 do {
		diag_log format ["%1", (_westPool select _i)];
	};

	diag_log "**** TDM BMR Air Combat East Vehicle Pool:";
	if (_eastPool isEqualTo []) then {call _logEmpty};
	for "_i" from 0 to (count _eastPool -1) step 1 do {
		diag_log format ["%1", (_eastPool select _i)];
	};

	diag_log "**** TDM BMR Air Combat Independen Vehicle Pool:";
	if (_indiPool isEqualTo []) then {call _logEmpty};
	for "_i" from 0 to (count _indiPool -1) step 1 do {
		diag_log format ["%1", (_indiPool select _i)];
	};
}
else
{
	diag_log "**** TDM BMR Air Combat Vehicle Pool:";
	for "_i" from 0 to (count _vehPool -1) step 1 do {
		diag_log format ["%1", (_vehPool select _i)];
	};
};