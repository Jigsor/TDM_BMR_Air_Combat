//fn_aircraftMasochism.sqf
//_veh spawn BMR_AC_fnc_aircraftMasochism;
params ["_vcl"];

waitUntil {time > 5};

private "_noTargetloopC";

while {alive _vcl} do
{
	private "_delay";
	private "_wpRad";
	if (_vcl isKindof "Plane") then {
		_delay = 100;
		_wpRad = [50,150] call BIS_fnc_randomInt;
	} else {
		_delay = 40;
		_wpRad = selectRandom [12,24,36,48,60];
	};

	_vcl setvehicleammo 1;

	private _wPArray = waypoints (group _vcl);
	for "_i" from 0 to (count _wPArray -1) do {
		deleteWaypoint [(group _vcl), _i]
	};

	private _wp1 = (group _vcl) addWaypoint [(getPos _vcl), 0];
	_wp1 setWaypointType "MOVE";

	private "_grpMemberPos";
	private _vicPosArr = [];
	private _targets = [];

	private _allEnemyGroupsWithPlayers = [];
	{_allEnemyGroupsWithPlayers pushBackUnique group _x} forEach (allPlayers select {!(side _x isEqualTo side (group _vcl))});

	private _targetGrp = grpNull;
	private _allEnemyGroups = [];
	if (_allEnemyGroupsWithPlayers isEqualTo []) then {
		{_allEnemyGroups pushBack _x} forEach (allGroups select {!((count units _x) isEqualTo 0) && !(side _x isEqualTo side (group _vcl))});
		if !(_allEnemyGroups isEqualTo []) then {
			_targetGrp = selectRandom _allEnemyGroups;
		};
	} else {
		_targetGrp = selectRandom _allEnemyGroupsWithPlayers;
	};

	if (!isNull _targetGrp) then {
		{
			if ((alive _x) && (captiveNum _x isEqualTo 0)) then {
				_grpMemberPos = getPos _x;

				if (format ["%1", _grpMemberPos] != "[0,0,0]") then	{
					_vicPosArr pushBack _grpMemberPos;
					_targets pushBack _x;
				};
			};
		} forEach units _targetGrp;
	};

	if !(_vicPosArr isEqualTo []) then {
		private _sel = (count _vicPosArr) -1;
		private _rnd_sel = floor random _sel;
		private _attackPos = _vicPosArr # _rnd_sel;
		private _victim = _targets # _rnd_sel;

		_wp1 setWaypointPosition [_attackPos, _wpRad];
		(group _vcl) setCurrentWaypoint _wp1;

		{
			_x reveal _victim;
			_x doTarget _victim;
			_x doFire _victim;
		} forEach (units group _vcl);
	}
	else
	{
		_wp1 setWaypointPosition [(getPos task1), _wpRad];
		(group _vcl) setCurrentWaypoint _wp1;
	};

	if (_allEnemyGroupsWithPlayers isEqualTo [] && {_allEnemyGroups isEqualTo []}) then {
		if (isNil "_noTargetloopC") then {
			_noTargetloopC = 1;
		} else {
			_noTargetloopC = _noTargetloopC + 1;
		};
		if (_noTargetloopC > 2) then {_vcl setfuel 0};
	};

	sleep _delay;
};