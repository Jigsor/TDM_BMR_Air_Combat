private _typesUnknown = true;
private _maxZ = 500;

while {_typesUnknown} do {
	private _heliEntities = entities [["Helicopter"], ["ParachuteBase"], false, true];
	if !(_heliEntities isEqualTo []) then {
		_maxZ = 500;
		_typesUnknown = false;
	};
	private _planeEntities = entities [["Plane"], [], false, true];
	if !(_planeEntities isEqualTo []) then {
		_maxZ = 1000;
		_typesUnknown = false;
	};
	sleep 2;
};

private _c = task1;
private _h = serviceHoop;

while {true} do {
	private _rPos = (AGLToASL getPos _c) getPos [1200 * (1 - abs random [-1, 0, 1]), random 360];
	private _rZ = 50 + (random _maxZ);
	private _nPos = [_rPos # 0, _rPos # 1];
	if (surfaceIsWater _nPos) then {
		_rZ = ((abs (getTerrainHeightASL _nPos)) + _rZ);
	};
	_nPos pushBack _rZ;
	private _flak = "SmallSecondary" createvehicle _nPos;
	sleep (0.3 + random 0.5);

	if (floor random 35 isEqualTo 2) then {
		private _hPos = [getPosATLVisual _h, getPosASLVisual _h] select surfaceIsWater getPosWorld _h;
		private _rad = floor (5 + random 15);
		for "_i" from 1 to 20 step 1 do {
			private _theta = 1.2 * _i;
			private _phi = random 180;
			private _x = _rad * sin(_phi) * cos(_theta);
			private _y = _rad * sin(_phi) * sin(_theta);
			private _z = _rad * cos(_phi);
			_pos = (_hPos vectorAdd [selectRandom [_x,-_x], selectRandom [_y,-_y], _z]);
			_flak = "SmallSecondary" createvehicle _pos;
			sleep 0.02;
		};
		sleep (5 + random 15);
	};
};