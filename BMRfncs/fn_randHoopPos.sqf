private _newPos = {(AGLToASL getPos task1) getPos [1000 * (1 - abs random [-1, 0, 1]), random 360];};
private _hoopPos = call _newPos;
if (surfaceIsWater _hoopPos) then {
	for "_i" from 1 to 5 step 1 do {
		_hoopPos = call _newPos;
		if !(surfaceIsWater _hoopPos) exitWith {};
	};
};
serviceHoop setDir (_hoopPos getDir task1) - 90;
private _rHeight = floor linearConversion [0, 1, random 1, 50 min 500, 500 max 50 + 1];
_hoopPos set [2,_rHeight];
serviceHoop setPos _hoopPos;
serviceHoop setVectorUp [0,0,1];
