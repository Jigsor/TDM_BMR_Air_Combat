if (missionNamespace getVariable ["BMR_friendly3dMark", true]) then {
	// Draw friendly 3D Icons
	BMRsideColor = [playerSide, false] call BIS_fnc_sideColor;
	BMR_FT3D = addMissionEventHandler ["EachFrame", {
		_fvd = vehicles select {!isNull driver _x && {side group _x isEqualTo side player && !(objectparent player isEqualTo _x)}};
		{
			drawIcon3D [
				'a3\ui_f\data\igui\cfg\cursors\select_ca.paa',
				BMRsideColor,
				_x modelToWorldVisual (_x selectionPosition 'Spine3'),
				0.5,
				0.5,
				0
			];
			false;
		} count _fvd;
	}];

	missionNamespace setVariable ["BMR_friendly3dMark", false];
	hintSilent localize "STR_BMR_ON";

} else {
	if (!isNil "BMR_FT3D") then {
		removeMissionEventHandler ["EachFrame", BMR_FT3D];
		BMR_FT3D = nil;
	};
	missionNamespace setVariable ["BMR_friendly3dMark", true];
	hintSilent localize "STR_BMR_OFF";
};