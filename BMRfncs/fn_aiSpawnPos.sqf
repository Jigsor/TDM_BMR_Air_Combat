private _spawnPos = (AGLToASL getPos task1) getPos [1250 * (1 - abs random [-1, 0, 1]), random 360]; 
private _spawnDir = _spawnPos getDir task1;
private _rHeight = [500,1000] call BIS_fnc_randomInt;
_spawnPos set [2,_rHeight];
[_spawnPos,_spawnDir]