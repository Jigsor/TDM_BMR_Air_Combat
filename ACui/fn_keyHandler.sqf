// by Jigsor
disableSerialization;
params ["_Dialog","_DikCode","_shiftState","_ctrlState","_altState"];
private _return = false;
if (_DikCode isEqualTo 35) then {//DIK_H 0x23
	if (!_shiftState && !_ctrlState && !_altState) then {
		closeDialog 0;
		createDialog "Jig_H_Menu";
		0 spawn {
			waitUntil {uiSleep 0.03; dialog};
			private _vd = viewdistance;
			sliderSetRange [1900, 100, 12000];
			sliderSetSpeed [1900, 100, 500];
			sliderSetPosition [1900, _vd];
			findDisplay 29876 displayCtrl 1900 ctrlSetTooltip format["%1", _vd];
		};
	} else {
		if (!isNull (uiNamespace getVariable "Jig_H_Menu")) then {closeDialog 0}
	};
};
//[_DikCode] spawn { hint format["%1", _this]; uiSleep 1; hint "" };
_return = true