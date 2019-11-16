//fn_aircraftMasochism.sqf
//_veh spawn BMR_AC_fnc_aircraftMasochism;
params ["_veh"];

private _noTargetLoopC = 0;

while {alive _veh} do
{
	private _delay = 40;
	private _rad = selectRandom [12,24,36,48,60];
	if (_veh isKindof "Plane") then {
		_delay = 100;
		_rad = floor linearConversion [0, 1, random 1, 50 min 150, 150 max 50 + 1];
	};

	_veh setvehicleammo 1;

	private _wPArray = waypoints (group _veh);
	for "_i" from 0 to (count _wPArray -1) do {
		deleteWaypoint [(group _veh), _i]
	};

	private _wp1 = (group _veh) addWaypoint [(getPos _veh), 0];
	_wp1 setWaypointType "MOVE";

	private "_grpMemberPos";
	private _vicPoses = [];
	private _prey = [];

	private _foePlayerGrps = [];
	{_foePlayerGrps pushBackUnique group _x} forEach (allPlayers select {!(side _x isEqualTo side (group _veh))});

	private _preyGrp = grpNull;
	private _foeGrps = [];
	if (_foePlayerGrps isEqualTo []) then {
		{_foeGrps pushBack _x} forEach (allGroups select {!((count units _x) isEqualTo 0) && !(side _x isEqualTo side (group _veh))});
		if !(_foeGrps isEqualTo []) then {
			_preyGrp = selectRandom _foeGrps;
		};
	} else {
		_preyGrp = selectRandom _foePlayerGrps;
	};

	if (!isNull _preyGrp) then {
		{
			if ((alive _x) && (captiveNum _x isEqualTo 0)) then {
				_grpMemberPos = getPos _x;

				if (format ["%1", _grpMemberPos] != "[0,0,0]") then	{
					_vicPoses pushBack _grpMemberPos;
					_prey pushBack _x;
				};
			};
		} forEach units _preyGrp;
	};

	if !(_vicPoses isEqualTo []) then {
		private _c = (count _vicPoses) -1;
		private _r = floor random _c;
		private _blitzPos = _vicPoses # _r;
		private _victim = _prey # _r;

		_wp1 setWaypointPosition [_blitzPos, _rad];
		(group _veh) setCurrentWaypoint _wp1;

		{
			_x reveal _victim;
			_x doTarget _victim;
			_x doFire _victim;
		} forEach (units group _veh);
	}
	else
	{
		_wp1 setWaypointPosition [(getPos task1), _rad];
		(group _veh) setCurrentWaypoint _wp1;
	};

	if (_foePlayerGrps isEqualTo [] && {_foeGrps isEqualTo []}) then {
		_noTargetLoopC = _noTargetLoopC + 1;
		if (_noTargetLoopC isEqualTo 3) then {
			_veh setfuel 0;
		};
		if (_noTargetLoopC isEqualTo 4) then {
			_veh setdamage 1;
		};
	};

	sleep _delay;
};