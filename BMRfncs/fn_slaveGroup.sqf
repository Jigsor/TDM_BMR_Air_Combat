// Needs to run on server
params [["_grp", grpNull, [grpNull]]];

if (!canSuspend) exitWith {
	[_grp] spawn BMR_AC_fnc_slaveGroup;
};

if (isNull _grp) exitWith {
	diag_log "***** BMR Air Combat error notice: BMR_AC_fnc_slaveGroup data defaulted to null group. Not critical but, should be investigated.";
};

_grp setVariable ["BMR_grpSkip", true];