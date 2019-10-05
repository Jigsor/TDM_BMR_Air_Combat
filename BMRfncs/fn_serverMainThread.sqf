if (!canSuspend) exitWith {
	0 spawn BMR_AC_fnc_serverMainThread;
};

private _winnerSide = Civilian;
private _startTime = diag_tickTime;
private _endTime = (missionDuration * 60);
private _c = 0;
BMR_AIvehCount = 0;

while { true } do {
	call BMR_AC_fnc_randHoopPos;
	sleep 10;

	if !(BMR_AIenabled isEqualTo 0) then {call BMR_AC_fnc_aiRegulator};
	sleep 50;

	if (_c isEqualTo 2) then {
		0 spawn BMR_AC_fnc_serverJanitor;
		_c = 0;
	};

	if ((diag_tickTime - _startTime) > _endTime) then {
		private _westScore = scoreSide west;
		private _eastScore = scoreSide east;

		if (_westScore isEqualTo _eastScore) then {
			[_winnerSide] remoteExec ["BMR_AC_fnc_missionEnd", 0];
			sleep 10;
		};

		_winnerSide = if (_westScore > _eastScore) then {WEST} else {EAST};
		[_winnerSide] remoteExec ["BMR_AC_fnc_missionEnd", 0];
	};

	_c = _c + 1;
};