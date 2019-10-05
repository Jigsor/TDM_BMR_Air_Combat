private _allPlayers = playersNumber west + playersNumber east;
private _allowedAIvehCount = _allPlayers * BMR_AImultiplier;
private _limiter = BMR_AirCraftLimiter +1;
if (_limiter < _allowedAIvehCount) then {
	if (_allPlayers >= _limiter) then {
		_allowedAIvehCount = 0;
	}
	else
	{
		_allowedAIvehCount = _limiter - _allPlayers;
	};
};
private _op4Side = BMR_Op4_side;
private _blu4Side = BMR_Blu4_side;
private _AIenabled = BMR_AIenabled;

if (BMR_AIvehCount < _allowedAIvehCount && {_AIenabled >= _allPlayers}) then {

	private _odd = 1;
	private "_side";

	for "_i" from BMR_AIvehCount to _allowedAIvehCount step 1 do {

		private _allGroupsEast = allGroups select {side _x isEqualTo _op4Side && {!(_x getVariable ["BMR_grpSkip",false])} && {!((count units _x) isEqualTo 0)}};
		private _allGroupsWest = allGroups select {side _x isEqualTo _blu4Side && {!(_x getVariable ["BMR_grpSkip",false])} && {!((count units _x) isEqualTo 0)}};
		private _tallyAGE = count _allGroupsEast;
		private _tallyAGW = count _allGroupsWest;

		_odd = [1,2] select (_tallyAGE > _tallyAGW);
		if (_tallyAGE isEqualTo _tallyAGW) then {_odd = selectRandom [1,2]};

		if (_odd isEqualTo 1) then {
			_side = _op4Side;
			_odd = 2;
		}else{
			_side = _blu4Side;
			_odd = 1;
		};

		[_side] call BMR_AC_fnc_spawnAIair; sleep 0.5;
	};

} else {

	if (BMR_AIvehCount > _allowedAIvehCount) then {

		private _AIvehCount = BMR_AIvehCount;
		private _airEntities = entities [["Plane","Helicopter"], ["ParachuteBase"], false, true];
		private _AIvics = [];

		{_AIvics pushBack _x} forEach (_airEntities select {{isplayer _x} count (crew vehicle _x) < 1});

		for '_i' from _AIvehCount to _allowedAIvehCount step -1 do {

			if !(_AIvics isEqualTo []) then {

				private _AIvicsWest = [];
				{_AIvicsWest pushBack _x} forEach (_AIvics select {(side driver _x) isEqualTo west});

				private _AIvicsEast = [];
				{_AIvicsEast pushBack _x} forEach (_AIvics select {(side driver _x) isEqualTo east});

				private _surplus = ObjNull;
				if (count _AIvicsWest > count _AIvicsEast) then {
					_surplus = _AIvicsWest # 0;
				};
				if (count _AIvicsWest < count _AIvicsEast) then {
					_surplus = _AIvicsEast # 0;
				};

				private _current = ObjNull;
				if (isNull _surplus) then {
					_current = _AIvics # 0;
				}
				else
				{
					_current = _surplus;
				};

				{_x removeAllEventHandlers "Killed"} forEach (crew _current);
				{_current removeAllEventHandlers _x} forEach ["Killed", "GetOut"];

				{deleteVehicle _x} forEach crew _current + [_current];
				BMR_AIvehCount = BMR_AIvehCount -1;

				_AIvics = _AIvics - [_current];
			};
		};
	};

};