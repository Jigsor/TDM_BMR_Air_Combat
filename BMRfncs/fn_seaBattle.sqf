private _asl = 0;
private _axis = worldSize / 2;
private _center = [_axis, _axis, 0];
private _border = _axis -1000;

if (getMarkerColor "AC_safeZone" isEqualTo "ColorGreen") then {deleteMarker "AC_safeZone"};
private _worldMkr = createMarker ["AC_safeZone", _center];
"AC_safeZone" setMarkerShape "RECTANGLE";
"AC_safeZone" setMarkerSize [_border, _border];
"AC_safeZone" setMarkerType "mil_dot";
"AC_safeZone" setMarkerColor "ColorGreen";

private _found = false;
private _objMkr = "nil";
private _nPos = [];
private _minDis = 1000;
//private _defaultPos = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");

for "_i" from 0 to 20 step 1 do {
	_nPos = [_center, _minDis, _axis, 1, 2, 0, 0] call BIS_fnc_findSafePos;

	if (getMarkerColor "AC_zone" isEqualTo "ColorRed") then {deleteMarker "AC_zone"};
	_objMkr = createMarker ["AC_zone", _nPos];
	"AC_zone" setMarkerShape "ELLIPSE";
	"AC_zone" setMarkerSize [1000, 1000];
	"AC_zone" setMarkerType "mil_dot";
	"AC_zone" setMarkerColor "ColorRed";

	if (_nPos inArea "AC_safeZone" && {surfaceIsWater _nPos}) then {
		_asl = abs (getTerrainHeightASL [_nPos select 0, _nPos select 1]);
		_asl = _asl + 500;
		_nPos set [2, _asl];
		_found = true;
	};

	if (_found) exitWith {
		["task1", _nPos] call BIS_fnc_taskSetDestination;
		task1 setPosASL _nPos;
		//"task1" setSimpleTaskDestination _nPos;
		diag_log "***** BMR Air Combat Notice: Success! Suitable position for Sea Battle Found.";
	};
	//sleep 0.01;
};

if (!_found) then {
	diag_log "***** BMR Air Combat Notice: No Suitable position found over water for battle center. Orignal position of task1 will be used.";
};

deleteMarker "AC_zone";
deleteMarker "AC_safeZone";