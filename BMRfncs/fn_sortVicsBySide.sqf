params [["_mixedPool", [], [[]]]];
private _empty = 0;

private _eastVics = _mixedPool select {(getNumber(configFile >> "cfgVehicles" >> _x >> "side")) isEqualTo 0};
if (_eastVics isEqualTo []) then {_empty = _empty +1};

private _westVics = _mixedPool select {(getNumber(configFile >> "cfgVehicles" >> _x >> "side")) isEqualTo 1};
if (_westVics isEqualTo []) then {_empty = _empty +1};

private _indiVics = _mixedPool select {(getNumber(configFile >> "cfgVehicles" >> _x >> "side")) isEqualTo 2};
if (_indiVics isEqualTo []) then {_empty = _empty +1};

if (_empty > 0) then {//Make some comprimises
	if !(_indiVics isEqualTo []) then {//Independant vehicles available
		if (_westVics isEqualTo []) then {_westVics = _indiVics};//If no West vehicles available then use Independant
		if (_eastVics isEqualTo []) then {_eastVics = _indiVics};//If no East vehicles available then use Independant
	};
	//No Independant vehicles available
	if (_westVics isEqualTo [] && {!(_eastVics isEqualTo [])}) then {_westVics = _eastVics};//If no West vehicles available then use East
	if (_eastVics isEqualTo [] && {!(_westVics isEqualTo [])}) then {_eastVics = _westVics};//If no East vehicles available then use West
};

private _sortedVicSidePool = [_eastVics, _westVics, _indiVics];
_sortedVicSidePool