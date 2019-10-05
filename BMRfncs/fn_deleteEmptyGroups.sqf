// call BMR_AC_fnc_deleteEmptyGroups;
{deleteGroup _x} forEach (allGroups select {local _x && {(count units _x) isEqualTo 0}});