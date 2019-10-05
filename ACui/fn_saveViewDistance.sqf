private _vd = round(viewDistance);
if !((profileNamespace getVariable ["BMR_AC_viewDistance", 1600]) isEqualTo _vd) then {
	profileNamespace setVariable ["BMR_AC_viewDistance", _vd];
	saveProfileNamespace;
};