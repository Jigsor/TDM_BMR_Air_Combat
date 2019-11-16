private _spawnPos = (AGLToASL getPos task1) getPos [1250 * (1 - abs random [-1, 0, 1]), random 360]; 
private _spawnDir = _spawnPos getDir task1;
private _rHeight = floor linearConversion [0, 1, random 1, 500 min 1000, 1000 max 500 + 1];
_spawnPos set [2,_rHeight];
[_spawnPos,_spawnDir]