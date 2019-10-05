if (!hasInterface) exitWith {};
addMissionEventHandler ["Map", {
	params ["_mapIsOpened", "_mapIsForced"];
	_mapCtrl = (findDisplay 12 displayCtrl 51);
	if (_mapIsOpened || _mapIsForced) then {
		BMRdrawOnMapID = _mapCtrl ctrlAddEventHandler ["Draw", {
			params [["_p", objNull]];
			{
				if (playerSide isEqualTo side _x && {alive _x}) then {
					private _name = name _x;
					private _color = [side _x, false] call BIS_fnc_sideColor;
					private _icon = getText (configfile >> "CfgVehicles" >> typeOf (vehicle _x) >> "icon");
					_p drawIcon [_icon, _color, getPosWorld _x, 26, 26, getDir _x, _name, 0, 0.07, "PuristaSemiBold", "right"];
				};
			} forEach playableUnits;
		}];
	} else {
		_mapCtrl ctrlRemoveEventHandler ["Draw", BMRdrawOnMapID];
	};
}];