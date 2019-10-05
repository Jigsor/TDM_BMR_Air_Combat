params ["_classname"];
private _weapons = [];
{ _weapons append getArray (_x >> "weapons") } forEach ([_classname, configNull] call BIS_fnc_getTurrets);

if (_weapons isEqualTo []) exitWith {_weapons};

{
	if (_weapons find "CMFlareLauncher" != -1) then {
		_weapons = _weapons - ["CMFlareLauncher"];
	};
	if (_weapons find "FakeHorn" != -1) then {
		_weapons = _weapons - ["FakeHorn"];
	};
	if (_weapons find "CMFlareLauncher_Triples" != -1) then {
		_weapons = _weapons - ["CMFlareLauncher_Triples"];
	};
	if (_weapons find "Laserdesignator_mounted" != -1) then {
		_weapons = _weapons - ["Laserdesignator_mounted"];
	};
	if (_weapons find "CUP_Laserdesignator_mounted" != -1) then {
		_weapons = _weapons - ["CUP_Laserdesignator_mounted"];
	};
	//if (_weapons find "Laserdesignator_pilotCamera" != -1) then {
	//	_weapons = _weapons - ["Laserdesignator_pilotCamera"];
	//};//could be effective?
} forEach _weapons;
_weapons