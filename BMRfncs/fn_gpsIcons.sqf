if (isNull (uiNamespace getVariable ["RscCustomInfoMiniMap", displayNull])) exitWith {true};
disableSerialization;
private _keyOver = false;
if (inputAction "MiniMapToggle" > 0) then {//"ListLeftVehicleDisplay","ListRightVehicleDisplay"
	private _display = uiNamespace getVariable ["RscCustomInfoMiniMap", displayNull];
	private _miniMapControlGroup = _display displayCtrl 13301;
	private _miniMap = _miniMapControlGroup controlsGroupCtrl 101;
	if (missionNameSpace getVariable ["BMR_gpsIcons", false]) then {
		_miniMap ctrlRemoveEventHandler ["Draw", BMR_miniMap];
		missionNameSpace setVariable ["BMR_gpsIcons", false];
	}
	else
	{
		BMR_miniMap = _miniMap ctrlAddEventHandler ["Draw", {
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
		missionNameSpace setVariable ["BMR_gpsIcons", true];
	};
};
_keyOver = true
