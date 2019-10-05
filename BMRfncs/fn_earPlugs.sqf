// call BMR_AC_fnc_earPlugs;
if ((missionNameSpace getVariable ["BMR_ACE_present" ,false]) && {ace_hearing_EnableCombatDeafness}) exitWith {
	if (!([player] call ace_hearing_fnc_hasEarPlugsIn) && {'ACE_EarPlugs' in items player}) then {
		[player] call ace_hearing_fnc_putInEarPlugs;
	} else {
		if ([player] call ace_hearing_fnc_hasEarPlugsIn) then {
			[player] call ace_hearing_fnc_removeEarPlugs;
		};
	};
};
if (soundVolume isEqualTo 1) then {
	1 fadeSound 0.3; hintSilent localize "STR_BMR_ON";
}else{
	1 fadeSound 1; hintSilent localize "STR_BMR_OFF";
};